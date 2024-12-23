# -*- coding: utf-8 -*-
"""pollutantsAPI.ipynb

Automatically generated by Colab.

Original file is located at
    https://colab.research.google.com/drive/1naVWNOhO03pxJFnmaBALHF0J7KpL-Z0x
"""

import json
import time
import requests
from datetime import datetime
from sqlalchemy import create_engine, MetaData, Table, Column, String, Integer, DateTime, Float
import logging

"""# Define"""

stationUrls = [
    "A97507",
    "A21373",
    "A156526",
    "A74863",
    "A66889"
]

api_key = "d45fda67589e376593853b0fba950fc6d0dcbb65"

"""# Functions to get sensor data"""

def fetch_data_from_apis(api_key):
    sensor_data = []

    for station_id in stationUrls:  # Change variable from station_url to station_id
        api_url = f"https://api.waqi.info/feed/{station_id}/?token={api_key}"

        try:
            response = requests.get(api_url)

            if response.status_code == 200:
                api_data = response.json()

                if api_data['status'] == 'ok':
                    station_info = api_data['data']
                    sensor_info = {
                        'api_timestamp': station_info['time']['v'],  # API timestamp
                        'etl_timestamp': int(datetime.now().timestamp()),  # Current timestamp
                        'location_address': station_info['city']['name'],  # City name
                        'location_coordinates': station_info['city']['geo'],  # Latitude and longitude
                        'name': station_info['city']['name'],  # Station name
                        'aqi': station_info['aqi'],  # aqi value
                        'pm10': station_info['iaqi'].get('pm10', {}).get('v', None),  # PM10 value
                        'pm25': station_info['iaqi'].get('pm25', {}).get('v', None),  # PM2.5 value
                        'station_id': station_id,  # Station ID
                        'ui_url': f"https://aqicn.org/station/@{station_id}/",  # User interface URL
                        'url': api_url  # API request URL
                    }
                    sensor_data.append(sensor_info)
                else:
                    print(f"API responses do not contain the expected data structures, station: {station_id}")
            else:
                print(f"API request failed with status code: {response.status_code}，station: {station_id}")
        except Exception as e:
            print(f"Error when requesting API of station {station_id}: {e}")

    return sensor_data

"""# Functions to insert data into the database"""

def save_sensor_data_to_db(sensor_data):
    # Connect to the database using SQLAlchemy
    engine = create_engine('postgresql://colab:z9CeH0zNAiM5IaVpfctf1r@localhost:5432/datasciencesociety')  # Replace with your actual database path
    metadata = MetaData()

    # Table schema
    pollution_sensor_data_table = Table(
        'pollution_sensor_data', metadata,
        Column('etl_timestamp', DateTime, primary_key=True, nullable=False),
        Column('station_id', String, primary_key=True, nullable=False),
        Column('api_timestamp', DateTime, nullable=False),
        Column('location_address', String, nullable=False),
        Column('latitude', Float, nullable=False),
        Column('longitude', Float, nullable=False),
        Column('name', String, nullable=False),
        Column('aqi', Integer, nullable=True),
        Column('pm10', Integer, nullable=False),
        Column('pm25', Integer, nullable=False),
        Column('ui_url', String, nullable=False),
        Column('url', String, nullable=False)
    )

    metadata.create_all(engine)

    # Insert data into the table
    with engine.connect() as conn:
        for data in sensor_data:
            insert_stmt = pollution_sensor_data_table.insert().values(
                etl_timestamp=datetime.fromtimestamp(data['etl_timestamp']),
                station_id=data['station_id'],
                api_timestamp=datetime.fromtimestamp(data['api_timestamp']),
                location_address=data['location_address'],
                latitude=data['location_coordinates'][0],
                longitude=data['location_coordinates'][1],
                name=data['name'],
                aqi=data['aqi'],
                pm10=data['pm10'],
                pm25=data['pm25'],
                ui_url=data['ui_url'],
                url=data['url']
            )
            print(data['aqi'])
            conn.execute(insert_stmt)
            conn.commit()

"""# Execution"""

if __name__ == "__main__":

    # Configure logging to write to a file
    logging.basicConfig(filename='/home/ago/scriptsDataScience/pollutants_db_insertion.log', level=logging.INFO,
                        format='%(asctime)s - %(levelname)s - %(message)s')
    try:
        sensor_data = fetch_data_from_apis(api_key)
        if sensor_data:  # Only save if there is data
            save_sensor_data_to_db(sensor_data)
            logging.info(f"Insertion successful")
        else:
            logging.warn(f"No sensor data to save")
    except Exception as e:
        logging.error(f"Insertion failed \n {e}")
