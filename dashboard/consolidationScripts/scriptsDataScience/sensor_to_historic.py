import pandas as pd
import logging
import json  
from sqlalchemy import create_engine, text, inspect, Table, Column, Integer, String, MetaData, BIGINT, REAL, SMALLINT, DateTime,  insert
from datetime import datetime, timedelta
import pytz

def transform_jason(df_group):
    # Convert the DataFrame into the desired format
    transformed_data = []
    for _, row in df_group.iterrows():
        entry = {
            'pm10': round(row['pm10'], 2),  
            'pm25': round(row['pm25'], 2),  
            'year_week': row['year_week'],
            'year_week_station_ID': row['year_week']+'_'+row['name'],
            'station': row['year_week']

        }
        transformed_data.append(entry)
    
    return transformed_data

def getDataFromDB_lasteek():
    data = {}
    # Connect to the database to download the table pollution_sensor_data and create a dataframe with it
    engine = create_engine("postgresql://colab:z9CeH0zNAiM5IaVpfctf1r@agosplace.ddns.net:5432/datasciencesociety")

    # Set the parameters to evaluate the last week
    start_date_timestamp = datetime.today() - timedelta(days=7)
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
    pollutants['weekday'] = pollutants['api_timestamp'].dt.weekday
    pollutants['year'] = pollutants['api_timestamp'].dt.year
    pollutants['week_number'] = pollutants['api_timestamp'].dt.isocalendar().week
    pollutants['year_week'] = pollutants['year'].astype(str) + '-W' + pollutants['week_number'].astype(str)

    grouped = pollutants.groupby(['weekday', 'name']).agg({
        'pm25': 'median',
        'pm10': 'median',
        'year_week': 'first'
    }).reset_index()

    grouped = grouped.groupby(['name']).agg({
        'pm25': 'mean',
        'pm10': 'mean',
        'year_week': 'first'
    }).reset_index()

    return transform_jason(grouped)

data=getDataFromDB_lasteek()

db_conn = create_engine("postgresql://colab:z9CeH0zNAiM5IaVpfctf1r@agosplace.ddns.net:5432/datasciencesociety")
inspector = inspect(db_conn)
tables = inspector.get_table_names()
metadata = MetaData()
new_table = Table('pollutants_historics', metadata,
                  Column('pm10', REAL),
                  Column('pm25', REAL),
                  Column('year_week', String(255)),
                  Column('year_week_station_ID', String(255), primary_key=True),
                  Column("station", String(255))
                  )
metadata.create_all(db_conn)
print(data)
try:
    with db_conn.connect() as conn:
        # Delete existing entries with the same keys
        for entry in data:
            delete_query = text("DELETE FROM pollutants_historics WHERE year_week_station_ID = :year_week_station_ID")
            conn.execute(delete_query, {"pollutants_historics.year_week_station_ID": entry['year_week_station_ID']})

        # Insert the new data
        conn.execute(new_table.insert(), data)
        conn.commit()
        logging.info("Insertion successful")
except Exception as e:
    logging.error(f"Insertion failed: {e}")
