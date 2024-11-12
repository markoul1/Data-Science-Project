import requests as rq
import pandas as pd
import json

def generate():
    """
    Calculate weekly averages for wind speed, temperature, and precipitation
    based on historical weather data. Export results to JSON format.
    """
    # Step 1: Set up the API URL and parameters for historical data
    url = 'https://archive-api.open-meteo.com/v1/archive'
    parameters = {
        'latitude': 45.4642,
        'longitude': 9.1895,
        'start_date': '2020-01-01',
        'end_date': '2024-09-30',
        'time_zone': 'Europe/Berlin',
        'hourly': 'temperature_2m,relative_humidity_2m,apparent_temperature,precipitation,cloud_cover,wind_speed_10m,wind_speed_100m'
    }

    # Step 2: Request data from the historical API
    response = rq.get(url, params=parameters)
    data = response.json()
    if 'error' in data:
        print("Error in downloading past weather: ", data['reason'])
        return

    # Step 3: Create DataFrame from the hourly data
    weather = pd.DataFrame(data['hourly'])
    weather['time'] = pd.to_datetime(weather['time'])
    weather['day'] = weather['time'].dt.date

    # Step 4: Calculate daily averages
    daily_average_weather = weather.groupby('day').mean().reset_index()

    # Step 5: Calculate weekly averages for wind speed, temperature, and precipitation
    daily_average_weather['day'] = pd.to_datetime(daily_average_weather['day'])
    daily_average_weather['week_of_year'] = daily_average_weather['day'].dt.isocalendar().week

    weekly_averages = daily_average_weather.groupby('week_of_year').agg({
        'wind_speed_10m': 'mean',
        'temperature_2m': 'mean',
        'precipitation': 'mean'
    }).reset_index()

    # Ensure all data types are compatible with JSON
    weekly_averages = weekly_averages.astype({
        'week_of_year': 'int',
        'wind_speed_10m': 'float',
        'temperature_2m': 'float',
        'precipitation': 'float'
    })

    # Step 6: Structure data for JSON export
    past_data = {
        "weather_metrics": {
            "title": "Weekly Average of Weather Metrics Across All Years",
            "datasets": [
                {
                    "label": "Wind Speed",
                    "data": list(weekly_averages['wind_speed_10m']),
                    "borderColor": "rgba(54, 162, 235, 1)",
                    "fill": False,
                    "borderWidth": 1,
                    "tension": 0
                },
                {
                    "label": "Temperature",
                    "data": list(weekly_averages['temperature_2m']),
                    "borderColor": "rgba(255, 99, 132, 1)",
                    "fill": False,
                    "borderWidth": 1,
                    "tension": 0
                },
                {
                    "label": "Precipitation",
                    "data": list(weekly_averages['precipitation']),
                    "borderColor": "rgba(75, 192, 192, 1)",
                    "fill": False,
                    "borderWidth": 1,
                    "tension": 0
                }
            ],
            "scales": {
                "x": {
                    "title": {
                        "display": True,
                        "text": "Week of Year"
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
            "weeks": list(weekly_averages['week_of_year'])
        }
    }

    with open('/usr/share/nginx/html/plotData/past/weather/data.json', 'w') as json_file:
       json.dump(past_data, json_file, indent=4)
    print("Generated weekly weather data JSON")
