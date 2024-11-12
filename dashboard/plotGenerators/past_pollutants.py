import pandas as pd
import json  # Import json to use for dumping the JSON correctly
from sqlalchemy import create_engine, text, inspect, Table
from datetime import datetime, timedelta
import pytz
from tenacity import retry, stop_after_attempt, wait_fixed


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

def generate():
    DBdata = getDataFromDB()
    # Create a dictionary to hold data for each location
    locations_data = {}
    print(DBdata)
    # Generate data for each location
    for location in LOCATIONS:
        try:
            # Example DataFrame for each location
            data = {
                'week': DBdata[location]["week"],
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
                            "text": "Week of Year"
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
                "hours": df["week"].tolist()
            }
        except Exception as e:
            print("There was an error formatting the pollution data fro the plots ", e)


    # Prepare the final JSON structure
    json_data = {
        "locations": locations_data
    }

    # Convert to JSON string
    json_string = json.dumps(json_data, indent=4)  # Convert Python dictionary to JSON string with indentation

    # Save JSON to a file
    with open('/usr/share/nginx/html/plotData/past/pollutants/data.json', 'w') as json_file:
        json_file.write(json_string)  # Write the JSON string directly to the file
    print("Generated past pollutants")

@retry(stop=stop_after_attempt(5), wait=wait_fixed(5))
def getDataFromDB():
    data = {}
    # Connect to the database to download the table pollution_sensor_data and create a dataframe with it
    engine = create_engine("postgresql://colab:z9CeH0zNAiM5IaVpfctf1r@db:5432/datasciencesociety")

    # Set the parameters to evaluate the last year's data 
    now = datetime.now()
    current_week = now.isocalendar().week
    current_year = now.isocalendar().year

    query = '''
    SELECT week, pm10, pm25, station
    FROM pollutants_historics
    WHERE year = %(current_year)s AND week >= %(start_date)s AND week <= %(end_date)s
    '''
    p = pd.read_sql(query, engine, params={"start_date": 1, "end_date": current_week, "current_year": current_year})

    pollutants = p.loc[:,['week','pm10','pm25', 'station']]   #Create the table pollutants extarcting only the required columns from the dataframe p
    week_p25 = pollutants[['week', 'pm25']]
    week_p10 = pollutants[['week', 'pm10']]


    average_p25 = week_p25.groupby('week').mean().reset_index()  # Create a new table with the average score of pm2.5 for the last 24 hours
    average_p10 = week_p10.groupby('week').mean().reset_index() # Create a new table with the average score of pm10 for the last 24 hours


    average_p25_sorted = average_p25.set_index('week') # Create a new table with the average score of pm2.5 for the last 24 hour in order
    average_p10_sorted = average_p10.set_index('week') # Create a new table with the average score of pm10 for the last 24 hours in order  

    #Transform all the dataframes
    data.update({
        LOCATIONS[0]: {
            "PM25": average_p25_sorted.values.flatten().tolist(),
            "PM10": average_p10_sorted.values.flatten().tolist(),
            "week": average_p10_sorted.index.tolist()
        },

    })

    for i, location in enumerate(LOCATIONS[1:]): 
        pollutants = p.loc[p['station'] == location, ['week', 'pm10', 'pm25', 'station']]
        week_p25, week_p10 = None, None
        if pollutants.empty:
            print(f"No data found for location: {location}")
            week_p25 = pd.DataFrame({
                'week': list(range(24)),  # List of 24 hours
                'pm25': [None] * 24  # All pm25 values set to None
            }).set_index('week')
            
            week_p10 = pd.DataFrame({
                'week': list(range(24)),  # List of 24 hours
                'pm10': [None] * 24  # All pm10 values set to None
            }).set_index('week')
        else:
            week_p25 = pollutants[['week', 'pm25']]
            week_p10 = pollutants[['week', 'pm10']]
            week_p25.set_index('week', inplace=True)
            week_p10.set_index('week', inplace=True)
        data.update({
            location: {
                "PM25": week_p25.values.flatten().tolist(),
                "PM10": week_p10.values.flatten().tolist(),
                "week": week_p10.index.tolist()
            }
        })
    return data

