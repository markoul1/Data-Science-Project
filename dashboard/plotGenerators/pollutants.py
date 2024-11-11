import pandas as pd
import json  # Import json to use for dumping the JSON correctly
from sqlalchemy import create_engine, text, inspect, Table
from datetime import datetime, timedelta
import pytz


# Define locations
LOCATIONS = [
    "All sensors",
    "Lambrate",
    "Corso 22 Marzo",
    "Via Franco Albini",
    "Piazza Sempione",
    "Oggiaro",
    "Via Federico Chopin"
]

def generate(DBdata):
    # Create a dictionary to hold data for each location
    locations_data = {}
    print(DBdata)
    # Generate data for each location
    for location in LOCATIONS:
        # Example DataFrame for each location
        data = {
            'Hour': DBdata["hours"],
            'PM25': DBdata[location]['PM25'],
            'PM10': DBdata[location]['PM10'],
        }
        df = pd.DataFrame(data)

        # Prepare JSON data for the current location
        locations_data[location] = {
            "title": f"Pollutant Levels Over Time For {location}",
            "datasets": [
                {
                    "label": "PM 2.5",
                    "data": df["PM25"].tolist(),
                    "borderColor": "rgba(54, 162, 235, 1)",
                    "fill": False,  # Use Python's False (will convert to false in JSON)
                    "borderWidth": 1,
                    "tension": 0
                },
                {
                    "label": "PM 10",
                    "data": df["PM10"].tolist(),
                    "borderColor": "rgba(75, 192, 192, 1)",
                    "fill": False,
                    "borderWidth": 1,
                    "tension": 0
                }
            ],
            "scales": {
                "x": {
                    "title": {
                        "display": True,  # Use Python's True (will convert to true in JSON)
                        "text": "Hour of Day"
                    }
                },
                "y": {
                    "beginAtZero": True,
                    "title": {
                        "display": True,
                        "text": "Levels (µg/m³)"
                    }
                }
            },
            "hours": df["Hour"].tolist()
        }

    # Prepare the final JSON structure
    json_data = {
        "locations": locations_data
    }

    # Convert to JSON string
    json_string = json.dumps(json_data, indent=4)  # Convert Python dictionary to JSON string with indentation

    # Save JSON to a file
    with open('/usr/share/nginx/html/plotData/current/pollutants/data.json', 'w') as json_file:
        json_file.write(json_string)  # Write the JSON string directly to the file
    print("Generated pollutants")

def getDataFromDB():
    data = {}
    # Connect to the database to download the table pollution_sensor_data and create a dataframe with it
    engine = create_engine("postgresql://colab:z9CeH0zNAiM5IaVpfctf1r@agosplace.ddns.net:5432/datasciencesociety")

    # Set the parameters to evaluate the last 24 hours 
    start_date_timestamp = datetime.today() - timedelta(days=1)
    end_date_timestamp = datetime.today()
    start_date = start_date_timestamp.strftime('%Y-%m-%d %H:%M:%S')
    end_date = end_date_timestamp.strftime('%Y-%m-%d %H:%M:%S')

    query = '''
    SELECT api_timestamp, pm10, pm25, aqi, name
    FROM pollution_sensor_data
    WHERE api_timestamp >= %(start_date)s AND api_timestamp <= %(end_date)s
    '''
    p = pd.read_sql(query, engine, params={"start_date": start_date, "end_date": end_date})

    pollutants = p.loc[:,['api_timestamp','pm10','pm25', 'name']]   #Create the table pollutants extarcting only the required columns from the dataframe p
    pollutants['api_timestamp']= pd.to_datetime(p['api_timestamp'])  #Convert the column api_timestamp to datetime format
    pollutants['hour'] = pollutants['api_timestamp'].dt.hour   # Create a new column with only the hour of each record
    daily_pollutants = pollutants
    hour_p25 = daily_pollutants.loc[:,['hour','pm25']] # Create a new table with the records of pm2.5 for the last 24 hours
    hour_p10 = daily_pollutants.loc[:,['hour','pm10']]  # Create a new table with the records of pm10 for the last 24 hours


    average_p25 = hour_p25.groupby('hour').mean().reset_index()  # Create a new table with the average score of pm2.5 for the last 24 hours
    average_p10 = hour_p10.groupby('hour').mean().reset_index() # Create a new table with the average score of pm10 for the last 24 hours

    #Configurate a list to order the hours after the groupby in the last step
    hours = list(range(24))
    start_hour = int(start_date[-8:-6]) 
    ordered_hours = hours[start_hour:] + hours[:start_hour]


    average_p25_sorted = average_p25.set_index('hour') # Create a new table with the average score of pm2.5 for the last 24 hour in order
    average_p10_sorted = average_p10.set_index('hour') # Create a new table with the average score of pm10 for the last 24 hours in order  

    #Transform all the dataframes
    data.update({
        LOCATIONS[0]: {
            "PM25": average_p25_sorted.values.flatten().tolist(),
            "PM10": average_p10_sorted.values.flatten().tolist()
        },
        "hours": ordered_hours

    })

    for i, location in enumerate(LOCATIONS[1:]): 
        pollutants = p.loc[p['name'] == location, ['api_timestamp', 'pm10', 'pm25', 'name']]
        hour_p25, hour_p10 = None, None
        if pollutants.empty:
            print(f"No data found for location: {location}")
            hour_p25 = pd.DataFrame({
                'hour': list(range(24)),  # List of 24 hours
                'pm25': [None] * 24  # All pm25 values set to None
            }).set_index('hour')
            
            hour_p10 = pd.DataFrame({
                'hour': list(range(24)),  # List of 24 hours
                'pm10': [None] * 24  # All pm10 values set to None
            }).set_index('hour')
        else:
            pollutants['api_timestamp']= pd.to_datetime(p['api_timestamp'])  #Convert the column api_timestamp to datetime format
            pollutants['hour'] = pollutants['api_timestamp'].dt.hour   # Create a new column with only the hour of each record
            daily_pollutants = pollutants
            hour_p25 = daily_pollutants.loc[:,['hour','pm25']] # Create a new table with the records of pm2.5 for the last 24 hours
            hour_p10 = daily_pollutants.loc[:,['hour','pm10']]  # Create a new table with the records of pm10 for the last 24 hours
            hour_p25.set_index('hour', inplace=True)
            hour_p10.set_index('hour', inplace=True)
        data.update({
            location: {
                "PM25": hour_p25.values.flatten().tolist(),
                "PM10": hour_p10.values.flatten().tolist()
            }
        })
    return data

# Call the function to generate the JSON
generate(getDataFromDB())
