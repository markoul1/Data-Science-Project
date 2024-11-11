import requests as rq
import pandas as pd
import json
from sqlalchemy import create_engine, text, inspect, Table
from datetime import datetime, timedelta
import pytz

def generate(DBdata):
    current_data = {
        "weather_metrics": {
            "title": "Current Weather Metrics in the last 24h",
            "datasets": [
                {
                    "label": "Wind Speed",
                    "data": list(DBdata['wind']),
                    "borderColor": "rgba(54, 162, 235, 1)",
                    "fill": False,
                    "borderWidth": 1,
                    "tension": 0
                },
                {
                    "label": "Temperature",
                    "data": list(DBdata['temperature']),
                    "borderColor": "rgba(255, 99, 132, 1)",
                    "fill": False,
                    "borderWidth": 1,
                    "tension": 0
                },
                {
                    "label": "Precipitation",
                    "data": list(DBdata['precipitation']),
                    "borderColor": "rgba(75, 192, 192, 1)",
                    "fill": False,
                    "borderWidth": 1,
                    "tension": 0
                },
                {
                    "label": "Humidity",
                    "data": list(DBdata['humidity']),
                    "borderColor": "rgba(75, 122, 192, 1)",
                    "fill": False,
                    "borderWidth": 1,
                    "tension": 0
                }
            ],
            "scales": {
                "x": {
                    "title": {
                        "display": True,
                        "text": "Hour of day"
                    }
                },
                "y": {
                    "beginAtZero": True,
                    "title": {
                        "display": True,
                        "text": "Average Value"
                    }
                }
            },
            "hours": list(DBdata['hours'])
        }
    }

    # Save to JSON
    with open('/usr/share/nginx/html/plotData/current/weather/data.json', 'w') as json_file:
        json.dump(current_data, json_file, indent=4)

def getDataFromDB():
    data = {}
    # Connect to the database to download the table pollution_sensor_data and create a dataframe with it
    engine = create_engine("postgresql://colab:z9CeH0zNAiM5IaVpfctf1r@localhost:5432/datasciencesociety")

    # Set the parameters to evaluate the last 24 hours 
    start_date_timestamp = datetime.today() - timedelta(days=1)
    end_date_timestamp = datetime.today()
    start_date = start_date_timestamp.strftime('%Y-%m-%d %H:%M:%S')
    end_date = end_date_timestamp.strftime('%Y-%m-%d %H:%M:%S')

    query = '''
    SELECT date, temperature, humidity, precipitation, wind
    FROM weather
    WHERE date >= %(start_date)s AND date <= %(end_date)s
    '''
    p = pd.read_sql(query, engine, params={"start_date": start_date, "end_date": end_date})

    pollutants = p.loc[:,['date','temperature','humidity', 'precipitation', 'wind']]   #Create the table pollutants extarcting only the required columns from the dataframe p
    pollutants['date']= pd.to_datetime(p['date'])  #Convert the column api_timestamp to datetime format
    pollutants['hour'] = pollutants['date'].dt.hour   # Create a new column with only the hour of each record
    daily_pollutants = pollutants
    temperature = daily_pollutants.loc[:,['hour','temperature']] # Create a new table with the records of pm2.5 for the last 24 hours
    humidity = daily_pollutants.loc[:,['hour','humidity']]  # Create a new table with the records of pm10 for the last 24 hours# Create a new table with the records of pm2.5 for the last 24 hours
    precipitation = daily_pollutants.loc[:,['hour','precipitation']]  # Create a new table with the records of pm10 for the last 24 hours# Create a new table with the records of pm2.5 for the last 24 hours
    wind = daily_pollutants.loc[:,['hour','wind']]  # Create a new table with the records of pm10 for the last 24 hours

    temperature.set_index('hour', inplace=True)
    humidity.set_index('hour', inplace=True)
    precipitation.set_index('hour', inplace=True)
    wind.set_index('hour', inplace=True)
    
    #Configurate a list to order the hours after the groupby in the last step
    hours = list(range(24))
    start_hour = int(start_date[-8:-6]) 
    ordered_hours = hours[start_hour:] + hours[:start_hour]

    data = {
        "temperature": temperature.values.flatten().tolist(),
        "humidity": humidity.values.flatten().tolist(),
        "precipitation": precipitation.values.flatten().tolist(),
        "wind": wind.values.flatten().tolist(),
        "hours": ordered_hours
    }
    return data
generate(getDataFromDB())