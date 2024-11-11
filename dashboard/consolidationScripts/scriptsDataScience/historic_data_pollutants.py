import pandas as pd
from datetime import datetime, timedelta
from sqlalchemy import create_engine, text, inspect, Table, Column, Integer, String, MetaData, BIGINT, REAL, SMALLINT, DateTime,  insert
import logging
from sqlalchemy import create_engine, MetaData, Table, delete

def transform_jason(df_group,station_ID):
    # Convert the DataFrame into the desired format
    transformed_data = []
    for _, row in df_group.iterrows():
        entry = {
            'pm10': round(row['pm10median'], 2),  
            'pm25': round(row['pm25median'], 2),  
            'year_week': row['year_week'],
            'year_week_station_ID': row['year_week']+'_'+station_ID,
            'station': station_ID

        }
        transformed_data.append(entry)
    
    return transformed_data

def fetch_historic_pollutants(routepm10,routepm25,station_ID):
  df_corsop10 = pd.read_csv(routepm10, parse_dates=['date'], dayfirst=False)
  df_corsop25 = pd.read_csv(routepm25, parse_dates=['date'], dayfirst=False)

  df_corsop10['date'] = pd.to_datetime(df_corsop10['date'], format='%Y/%m/%d')
  df_corsop25['date'] = pd.to_datetime(df_corsop25['date'], format='%Y/%m/%d')
  
  df_corsop10.columns = ['date'] + ['pm10' + col for col in df_corsop10.columns if col != 'date']
  df_corsop25.columns = ['date'] + ['pm25' + col for col in df_corsop25.columns if col != 'date']
  df_corsop = pd.merge(df_corsop25, df_corsop10, how='inner', on='date')
  df_corsop['month'] = df_corsop['date'].dt.month
  df_corsop['year'] = df_corsop['date'].dt.year
  df_corsop['day_of_week'] = df_corsop['date'].dt.day_name()
  df_corsop['week_number'] = df_corsop['date'].dt.isocalendar().week
  df_grouped_corsop = df_corsop.groupby(['year', 'week_number']).agg({
    'pm25min': 'mean',
    'pm25max': 'mean',
    'pm25median': 'mean',
    'pm25q1': 'mean',
    'pm25q3': 'mean',
    'pm25stdev': 'mean',
    'pm25count': 'mean',
    'pm10min': 'mean',
    'pm10max': 'mean',
    'pm10median': 'mean',
    'pm10q1': 'mean',
    'pm10q3': 'mean',
    'pm10stdev': 'mean',
    'pm10count': 'mean'
}).reset_index()
  df_grouped_corsop['year_week'] = df_grouped_corsop['year'].astype(str) + '-W' + df_grouped_corsop['week_number'].astype(str)
  data=transform_jason(df_grouped_corsop,station_ID)
  
  return data


station_ID_lamb="156526"
ruta_1 = './Pollutants csv/Sensor Lamberte pm10.csv'
ruta_2 = './Pollutants csv/Sensor Lamberte pm2.5.csv'

station_ID_cors="97507"
ruta_3 = './Pollutants csv/Sensor_Corso_22_Marzo_pm10_new.csv'
ruta_4 = './Pollutants csv/Sensor_Corso_22_Marzo_pm2.5_new.csv'

station_ID_fran="246697"
ruta_5 = './Pollutants csv/Sensor_Via_Franco_pm10.csv'
ruta_6 = './Pollutants csv/Sensor_Via_Franco_pm2.5.csv'

station_ID_fred="74863"
ruta_7 = './Pollutants csv/Sensor_Via_Frederico_Chopin_pm10.csv'
ruta_8 = './Pollutants csv/Sensor_Via_Frederico_Chopin_pm2.5.csv'

data=fetch_historic_pollutants(ruta_1,ruta_2,station_ID_lamb)+fetch_historic_pollutants(ruta_3,ruta_4,station_ID_cors)
data=data + fetch_historic_pollutants(ruta_5,ruta_6,station_ID_fran) + fetch_historic_pollutants(ruta_7,ruta_8,station_ID_fred)
print(len(data))
db_conn = create_engine("postgresql://colab:z9CeH0zNAiM5IaVpfctf1r@localhost:5432/datasciencesociety")
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



try:
  with db_conn.connect() as conn:
      delete_stmt = delete(new_table)
      conn.execute(delete_stmt)
      conn.commit()
      conn.execute(new_table.insert(), data)
      conn.commit()
      logging.info(f"Insertion successful")
except Exception as e:
      logging.error(f"Insertion failed \n {e}")


