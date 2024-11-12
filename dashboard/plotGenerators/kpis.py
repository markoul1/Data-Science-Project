import pandas as pd
import json  
from sqlalchemy import create_engine, text, inspect, Table
from datetime import datetime, timedelta
import pytz
from tenacity import retry, stop_after_attempt, wait_fixed

KPIS = [
        "Maximum pollutant level 2.5 (µg/m³)",
        "Maximum pollutant level 10 (µg/m³)",
        "Average of 2.5 (µg/m³)",
        "Average of 10 (µg/m³)",
        "Average quality index (aqi)",
    ]

def generate():
    DBdata = getDataFromDB()
    # Create a dictionary to hold data for each kpi
    kpi_data = {}

    # Generate data for each location
    for kpi in KPIS:
        # Example DataFrame for each location
        data = {
            'Hour': DBdata['hours'],
            'value': DBdata[kpi],
            'threshold': 23
        }
        
        print(kpi)
        print(len(data["Hour"]))
        print(len(data["value"]))
        df = pd.DataFrame(data)

        # Prepare JSON data for the current location
        kpi_data[kpi] = {
            "title": kpi,
            "datasets": [
                {
                    "data": df["value"].tolist(),
                    "borderColor": "rgba(54, 162, 235, 1)",
                    "fill": False,  
                    "borderWidth": 1,
                    "tension": 0
                },
            ],
            "scales": {
                "x": {
                    "title": {
                        "display": kpi == KPIS[-1],  # Use Python's True (will convert to true in JSON)
                        "text": "Hour of Day"
                    },
                    "ticks": {
                        "display": kpi == KPIS[-1], #only display orizontal ticks on the last graph for layout purpose
                        "font": {
                            "size": 10 
                        }
                    }
                },
                "y": {
                    "beginAtZero": True,
                    "title": {
                        "display": True,
                        "text": "Level"
                    },
                    "ticks": {
                        "font": {
                            "size": 10 
                        }
                    }
                }
            },
            "hours": df["Hour"].tolist(),
            "threshold": data["threshold"],  # Add the threshold value here
            "backgroundColor": "rgba(255, 99, 71, 0.7)" if any(value > data["threshold"] for value in data["value"]) else "rgba(255, 255, 255, 0.0)"  # Light red if exceeds
        }

    # Prepare the final JSON structure
    json_data = {
        "kpis": kpi_data
    }

    # Convert to JSON string
    json_string = json.dumps(json_data, indent=4)  # Convert Python dictionary to JSON string with indentation

    # Save JSON to a file
    print(json_string)
    with open('/usr/share/nginx/html/plotData/current/kpi/data.json', 'w') as json_file:
        json_file.write(json_string)  # Write the JSON string directly to the file
    print("Generated kpis")

@retry(stop=stop_after_attempt(5), wait=wait_fixed(5))
def getDataFromDB():
    # Connect to the database to download the table pollution_sensor_data and create a dataframe with it
    engine = create_engine("postgresql://colab:z9CeH0zNAiM5IaVpfctf1r@db:5432/datasciencesociety")

    # Set the parameters to evaluate the last 24 hours 
    start_date_timestamp = datetime.today() - timedelta(days=1)
    end_date_timestamp = datetime.today()
    start_date = start_date_timestamp.strftime('%Y-%m-%d %H:%M:%S')
    end_date = end_date_timestamp.strftime('%Y-%m-%d %H:%M:%S')

    query = '''
    SELECT api_timestamp, pm10, pm25, aqi
    FROM pollution_sensor_data
    WHERE api_timestamp >= %(start_date)s AND api_timestamp <= %(end_date)s
    '''
    p = pd.read_sql(query, engine, params={"start_date": start_date, "end_date": end_date})

    pollutants = p.loc[:,['api_timestamp','pm10','pm25','aqi']]   #Create the table pollutants extarcting only the required columns from the dataframe p
    pollutants['api_timestamp']= pd.to_datetime(p['api_timestamp'])  #Convert the column api_timestamp to datetime format
    pollutants['hour'] = pollutants['api_timestamp'].dt.hour   # Create a new column with only the hour of each record
    daily_pollutants = pollutants[(pollutants['api_timestamp'] >= start_date) & (pollutants['api_timestamp'] <= end_date) ] # create a new table only with the records of the last 24 hours.
    hour_p25 = daily_pollutants.loc[:,['hour','pm25']] # Create a new table with the records of pm2.5 for the last 24 hours
    hour_p10 = daily_pollutants.loc[:,['hour','pm10']]  # Create a new table with the records of pm10 for the last 24 hours
    hour_aqi = daily_pollutants.loc[:,['hour','aqi']]   # Create a new table with the records of the overall air quality for the last 24 hours

    kpi_average_p25 = hour_p25.groupby('hour').mean().reset_index()  # Create a new table with the average score of pm2.5 for the last 24 hours
    kpi_average_p10 = hour_p10.groupby('hour').mean().reset_index() # Create a new table with the average score of pm10 for the last 24 hours
    kpi_average_aqi = hour_aqi.groupby('hour').mean().reset_index()  # Create a new table with the average score of the overall air quality for the last 24 hours
    kpi_max_p25 = hour_p25.groupby('hour').max().reset_index()     # Create a new table with the max score of pm2.5 for the last 24 hours
    kpi_max_p10 = hour_p10.groupby('hour').max().reset_index()     # Create a new table with the max score of pm10 for the last 24 hours

    #Configurate a list to order the hours after the groupby in the last step
    hours = list(range(24))
    start_hour = int(start_date[-8:-6]) 
    ordered_hours = hours[start_hour:] + hours[:start_hour]


    kpi_average_p25_sorted = kpi_average_p25.set_index('hour').reindex(ordered_hours) # Create a new table with the average score of pm2.5 for the last 24 hour in order
    kpi_average_p10_sorted = kpi_average_p10.set_index('hour').reindex(ordered_hours) # Create a new table with the average score of pm10 for the last 24 hours in order
    kpi_average_aqi_sorted = kpi_average_aqi.set_index('hour').reindex(ordered_hours) # Create a new table with the average score of the overall air quality for the last 24 hours in order
    kpi_max_p25_sorted = kpi_max_p25.set_index('hour')  # Create a new table with the max score of pm2.5 for the last 24 hours in order
    kpi_max_p10_sorted = kpi_max_p10.set_index('hour')   # Create a new table with the max score of pm10 for the last 24 hours in order
    
    merged_df = pd.concat([
        kpi_average_p25_sorted,
        kpi_average_p10_sorted,
        kpi_average_aqi_sorted,
        kpi_max_p25_sorted,
        kpi_max_p10_sorted
    ], axis=1)
    merged_df_cleaned = merged_df.dropna()
    
    return {
        KPIS[0]: merged_df_cleaned.iloc[:,0].values.flatten().tolist(),
        KPIS[1]: merged_df_cleaned.iloc[:,1].values.flatten().tolist(),
        KPIS[2]: merged_df_cleaned.iloc[:,2].values.flatten().tolist(),
        KPIS[3]: merged_df_cleaned.iloc[:,3].values.flatten().tolist(),
        KPIS[4]: merged_df_cleaned.iloc[:,4].values.flatten().tolist(),
        "hours": merged_df_cleaned.index.tolist()

    }


