# -*- coding: utf-8 -*-
"""traffic volume around each air sensor.ipynb

Automatically generated by Colab.

Original file is located at
    https://colab.research.google.com/drive/1BeyYx_2nks0T6BVHgTdSYOfAhNScsWY2

Run this in a terminal

pip install protobuf
pip install mapbox-vector-tile
protoc --python_out=. vector_tile.proto
"""

import requests
#import vector_tile_pb2



import math

# Convert tile coordinates to lat/lon considering zoom level
def tile_to_lat_lon(x_tile, y_tile, zoom):
    n = 2.0 ** zoom
    lon_deg = (x_tile / n) * 360.0 - 180.0
    lat_rad = math.atan(math.sinh(math.pi * (1 - 2 * y_tile / n)))
    lat_deg = math.degrees(lat_rad)
    return lat_deg, lon_deg

# Convert latitude and longitude to tile coordinates considering zoom level
def lat_lon_to_tile(lat, lon, zoom):
    # Earth's radius in meters
    R = 6378137
    # Convert latitude and longitude to radians
    lat_rad = math.radians(lat)
    lon_rad = math.radians(lon)

    # Convert latitude and longitude to Web Mercator coordinates (x, y)
    x = R * lon_rad
    y = R * math.log(math.tan(math.pi / 4 + lat_rad / 2))

    # Calculate the number of tiles at the given zoom level
    n = 2.0 ** zoom

    # Convert (x, y) to tile coordinates
    x_tile = int((x + R * math.pi) / (2 * R * math.pi) * n)
    y_tile = int((n / 2) - (y / (2 * R * math.pi)) * n)  # Adjust to match Web Mercator coordinates

    return x_tile, y_tile

weather_tags = [{'api_timestamp': 1728930117,
  'etl_timestamp': 1728930418,
  'location_address': 'Milan, Milano, Italy',
  'location_coordinates': [45.442, 9.212],
  'name': 'Via Franco Albini',
  'pm10': 26,
  'pm25': 59,
  'station_id': '246697',
  'ui-url': 'https://aqicn.org/station/246697',
  'url': 'https://api.waqi.info/feed/A246697?token=4eeb9d60ca90b4e6e7877e45dd5eae80ba634bf1'},
  {'api_timestamp': 1728915723,
  'etl_timestamp': 1728915926,
  'location_address': 'Arco della Pace, Oggiaro, Milan, Milano, Italy',
  'location_coordinates': [45.475697, 9.172453],
  'name': 'Piazza Sempione',
  'pm10': 28,
  'pm25': 83,
  'url': 'https://api.waqi.info/feed/A21373?token=4eeb9d60ca90b4e6e7877e45dd5eae80ba634bf1',
  'station_id': '21373',
  'ui-url': 'https://aqicn.org/station/21373',
  'url': 'https://api.waqi.info/feed/A21373?token=4eeb9d60ca90b4e6e7877e45dd5eae80ba634bf1'},
 {'api_timestamp': 1728930132,
  'etl_timestamp': 1728930418,
  'location_address': 'Tamoil, Lambrate, Milan, Milano, Italy',
  'location_coordinates': [45.478, 9.224],
  'name': 'Lambrate',
  'pm10': 20,
  'pm25': 60,
  'station_id': '156526',
  'ui-url': 'https://aqicn.org/station/156526',
  'url': 'https://api.waqi.info/feed/A156526?token=4eeb9d60ca90b4e6e7877e45dd5eae80ba634bf1'},
 {'api_timestamp': 1728930102,
  'etl_timestamp': 1728930418,
  'location_address': 'Via Federico Chopin, Milan, Milano, Italy, 20141',
  'location_coordinates': [45.426, 9.206],
  'name': 'Via Federico Chopin',
  'pm10': 50,
  'pm25': 102,
  'station_id': '74863',
  'ui-url': 'https://aqicn.org/station/74863',
  'url': 'https://api.waqi.info/feed/A74863?token=4eeb9d60ca90b4e6e7877e45dd5eae80ba634bf1'},
 {'api_timestamp': 1728930100,
  'etl_timestamp': 1728930418,
  'location_address': 'Corso 22 Marzo, Ortica, Milan, Milano, Italy, 20135',
  'location_coordinates': [45.462, 9.21],
  'name': 'Corso 22 Marzo',
  'pm10': 15,
  'pm25': 51,
  'station_id': '97507',
  'ui-url': 'https://aqicn.org/station/97507',
  'url': 'https://api.waqi.info/feed/A97507?token=4eeb9d60ca90b4e6e7877e45dd5eae80ba634bf1'}]

def calculate_traffic_volume(congestion, average_speed, road_type):
    """
    Calculate the traffic volume based on congestion, average speed, and road type.

    Parameters:
    - congestion: A float value between 0 (no congestion) and 1 (maximum congestion).
    - average_speed: The average speed of vehicles in km/h.
    - road_type: A string representing the type of road ('primary', 'secondary', 'tertiary', 'residential').

    Returns:
    - traffic_volume: The estimated traffic volume in vehicles per hour.
    """

    # Define road capacities (vehicles/hour)
    road_capacity = {
        'primary': 1600,
        'secondary': 1200,
        'tertiary': 800,
        'residential': 400
    }

    # Get the capacity for the given road type
    if road_type in road_capacity:
        Q = road_capacity[road_type]
    else:
        raise ValueError("Invalid road type. Choose from: primary, secondary, tertiary, residential. Selected: " + road_type)

    # Assume a free-flow speed (for example, 60 km/h)
    free_flow_speed = 60  # km/h

    # Calculate effective capacity
    effective_capacity = Q * (1 - congestion)

    # Calculate traffic volume
    traffic_volume = effective_capacity * (average_speed / free_flow_speed)

    return traffic_volume

import requests
import mapbox_vector_tile
import math
import pprint
import pytz
from datetime import datetime

rome_tz = pytz.timezone('Europe/Rome')
zoom_level = 15

for tag in weather_tags:
  lat = tag['location_coordinates'][0]
  lon = tag['location_coordinates'][1]
  tile_lat, tile_lon = lat_lon_to_tile(lat, lon, zoom_level)

  # Send an HTTP request and get the x-protobuf response
  url = f"https://traffic.vector.hereapi.com/v2/traffictiles/flow/mc/{zoom_level}/{tile_lat}/{tile_lon}/omv?apikey=CrLz54wVwUOQ5gQjUFlnS_RT9Spo_DF1csKwahfGDfU"
  headers = {'Accept': 'application/x-protobuf'}
  response = requests.get(url, headers=headers)
  tile_lat, tile_lon = lat_lon_to_tile(lat, lon, zoom_level)

  # Haversine formula to calculate distance between two lat/lon points
  def haversine(lon1, lat1, lon2, lat2):
      R = 6371000  # Earth radius in meters
      phi1 = math.radians(lat1)
      phi2 = math.radians(lat2)
      delta_phi = math.radians(lat2 - lat1)
      delta_lambda = math.radians(lon2 - lon1)

      a = math.sin(delta_phi / 2) ** 2 + math.cos(phi1) * math.cos(phi2) * math.sin(delta_lambda / 2) ** 2
      c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a))

      return R * c  # Distance in meters

  # Decode vector tile and get layers
  tile_data = response.content  # Your protobuf response content
  tile = mapbox_vector_tile.decode(tile_data)

  # Access layers (e.g., traffic_flow layer)
  layer = tile.get("traffic_flow")
  segments = []
  # Iterate through features in the layer
  roadTypes = {'primary', 'secondary'}
  for feature in layer["features"]:
      properties = feature["properties"]
      geometry = feature["geometry"]

      # Access coordinates for the LINESTRING
      if geometry["type"] == "LineString":
          coordinates = geometry["coordinates"]

          # Calculate the length of the line
          length = 0
          for i in range(1, len(coordinates)):
              lon1, lat1 = coordinates[i - 1]
              lon2, lat2 = coordinates[i]
              length += haversine(lon1, lat1, lon2, lat2)

          # Get color (assuming "color" exists in the properties)
          congestion = properties.get("congestion", "unknown")
          if properties['road_kind_detail'] not in ['primary', 'secondary', 'tertiary', 'residential'] or not 'speed' in properties:
            continue  #exclude minor roads
          volume = calculate_traffic_volume(properties['congestion'], properties['speed'], properties['road_kind_detail'])

          # Print the results
          #print(f"Length of line: {length} meters")
          #print(f"congestion of line: {congestion}")
          segments.append((length, volume))
      else:
          print(f"Unsupported geometry type: {geometry['type']}")

  cumulated_volume = 0
  total_lenght = 0
  for segment in segments:
      cumulated_volume += segment[0] * segment[1]
      total_lenght += segment[0]
  tag["average_volume"] = cumulated_volume/total_lenght
  tag["etl_timestamp"] = datetime.now(rome_tz)
  del tag["api_timestamp"]
  #print(f"Average congestion is: {cumulated_congestion/total_lenght}")
  #print(f"{len(segments)} segments")
#pprint.pprint(weather_tags)

#Milan
location = "milan"
lat = 45.478
lon = 9.224
zoom_level = 15

#Connect to database

from sqlalchemy import create_engine, text, inspect, Table, Column, Integer, String, MetaData, DateTime
import pandas as pd

db_conn = create_engine("postgresql://colab:z9CeH0zNAiM5IaVpfctf1r@localhost:5432/datasciencesociety")
inspector = inspect(db_conn)

# Step 3: Get the names of all tables in the database
tables = inspector.get_table_names()
#print("Tables in the database:", tables)

metadata = MetaData()

# Define a new table
new_table = Table('traffic_volume', metadata,
                  Column('station_id', Integer, primary_key=True),
                  Column('etl_timestamp', DateTime, primary_key=True),
                  Column('traffic_volume', Integer)
                  )

# Create the table in the database
metadata.create_all(db_conn)

# Define the table (this matches the existing table structure)
traffic_volume_table = Table('traffic_volume', metadata, autoload_with=db_conn)

# Drop the table
with db_conn.connect() as connection:
    traffic_volume_table.drop(connection)

import logging

# Configure logging to write to a file
logging.basicConfig(filename='/home/ago/scriptsDataScience/traffic_volume_db_insertion.log', level=logging.INFO,
                    format='%(asctime)s - %(levelname)s - %(message)s')
try:
    with db_conn.connect() as conn:
        conn.execute(new_table.insert(), [{
            'station_id': item.get('station_id'),
            'etl_timestamp': item.get('etl_timestamp'),
            'traffic_volume': item.get('average_volume')  # Assuming 'traffic_volume' refers to 'average_volume'
        } for item in weather_tags])
        conn.commit()
        logging.info(f"Insertion successful")
except Exception as e:
    logging.error(f"Insertion failed \n {e}")