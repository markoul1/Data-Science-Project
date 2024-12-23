import pandas as pd
import json  # Import json to use for dumping the JSON correctly
from sqlalchemy import create_engine, text, inspect, Table, Column, Integer, String, MetaData, BIGINT, REAL, SMALLINT, DateTime,  insert
from datetime import datetime, timedelta
import pytz
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import MinMaxScaler
from sklearn.metrics.pairwise import cosine_similarity
import tensorflow as tf
from sklearn.metrics import mean_absolute_error, mean_squared_error, mean_absolute_percentage_error
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense, LSTM
from tensorflow.keras.losses import Huber

LOCATIONS = [
    "All sensors",
    "Lambrate",
    "Corso 22 Marzo",
    "Via Franco Albini",
    "Via Federico Chopin"]
n_lags = 10
test_size = 0.2

# Define locations
LOCATIONS = [
    "All sensors",
    "Lambrate",
    "Corso 22 Marzo",
    "Via Franco Albini",
    "Via Federico Chopin"
]

def generate():
    DBdata = dataframe_generates()
    # Create a dictionary to hold data for each location
    locations_data = {}
    print(DBdata)
    # Generate data for each location
    for location in LOCATIONS:
        try:
            # Example DataFrame for each location
            data = {
                'Hour': DBdata[location]["week"],
                'PM25': DBdata[location]['pm25'],
                'PM10': DBdata[location]['pm10'],
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
        except Exception as e:
            print("There was an error formatting the pollution data fro the plots ", e)


    # Prepare the final JSON structure
    json_data = {
        "locations": locations_data
    }

    # Convert to JSON string
    json_string = json.dumps(json_data, indent=4)  # Convert Python dictionary to JSON string with indentation

    # Save JSON to a file
    with open('/usr/share/nginx/html/plotData/future/pollutants/data.json', 'w') as json_file:
        json_file.write(json_string)  # Write the JSON string directly to the file
    print("Generated pollutants")


def dataframe_generates():
  LOCATIONS = [
    "All sensors",
    "Lambrate",
    "Corso 22 Marzo",
    "Via Franco Albini",
    "Via Federico Chopin"]

  data = {}

  df=getDataFromDB()

  for location in LOCATIONS:
    if location == "All sensors":
        filtered_df = df
        grouped_df = filtered_df.groupby(['week','year']).agg({
    'pm10': 'mean',
    'pm25': 'mean',
    'week': 'mean',
    'year': 'mean'
})
        y_test_1w, y_pred_1w, mae_1w, rmse_1w, mape_1w, x_1w= train_and_predict_pm10(filtered_df,forecast_horizon=1, error=Huber(delta=1))
        y_test_2w, y_pred_2w, mae_2w, rmse_2w, mape_2w ,x_2w= train_and_predict_pm10(filtered_df,forecast_horizon=2, error=Huber(delta=1.5))
        y_test_3w, y_pred_3w, mae_3w, rmse_3w, mape_3w, x_3w  = train_and_predict_pm10(filtered_df,forecast_horizon=3, error=Huber(delta=2))
        y_test_4w, y_pred_4w, mae_4w, rmse_4w, mape_4w, x_4w= train_and_predict_pm10(filtered_df,forecast_horizon=4, error=Huber(delta=2.5))
        y_test_5w, y_pred_5w, mae_5w, rmse_5w, mape_5w, x_5w = train_and_predict_pm10(filtered_df,forecast_horizon=5, error=Huber(delta=3))


        y_test_1w25, y_pred_1w25, mae_1w, rmse_1w, mape_1w, x_1w25= train_and_predict_pm25(filtered_df,forecast_horizon=1, error=Huber(delta=1))
        y_test_2w, y_pred_2w25, mae_2w, rmse_2w, mape_2w ,x_2w25= train_and_predict_pm25(filtered_df,forecast_horizon=2, error=Huber(delta=1.5))
        y_test_3w, y_pred_3w25, mae_3w, rmse_3w, mape_3w, x_3w25  = train_and_predict_pm25(filtered_df,forecast_horizon=3, error=Huber(delta=2))
        y_test_4w, y_pred_4w25, mae_4w, rmse_4w, mape_4w, x_4w25= train_and_predict_pm25(filtered_df,forecast_horizon=4, error=Huber(delta=2.5))
        y_test_5w, y_pred_5w25, mae_5w, rmse_5w, mape_5w, x_5w25 = train_and_predict_pm25(filtered_df,forecast_horizon=5, error=Huber(delta=3))

        data[location]={"pm25":grouped_df[grouped_df['year'] == 2024]["pm25"].values.tolist()+ [x_1w25.item(), x_2w25.item(), x_3w25.item(), x_4w25.item(), x_5w25.item()],
                    "pm10":grouped_df[grouped_df['year'] == 2024]["pm10"].values.tolist()+ [ x_1w.item(), x_2w.item(), x_3w.item(), x_4w.item(), x_5w. item()],
                    "week":list(range(1, max(filtered_df[ (filtered_df['year'] == 2024)]["week"].values.tolist())+6))

                    }

    else:
        filtered_df = df[df['station'] == location]
        y_test_1w, y_pred_1w, mae_1w, rmse_1w, mape_1w, x_1w= train_and_predict_pm10(filtered_df,forecast_horizon=1, error=Huber(delta=1))
        y_test_2w, y_pred_2w, mae_2w, rmse_2w, mape_2w ,x_2w= train_and_predict_pm10(filtered_df,forecast_horizon=2, error=Huber(delta=1.5))
        y_test_3w, y_pred_3w, mae_3w, rmse_3w, mape_3w, x_3w  = train_and_predict_pm10(filtered_df,forecast_horizon=3, error=Huber(delta=2))
        y_test_4w, y_pred_4w, mae_4w, rmse_4w, mape_4w, x_4w= train_and_predict_pm10(filtered_df,forecast_horizon=4, error=Huber(delta=2.5))
        y_test_5w, y_pred_5w, mae_5w, rmse_5w, mape_5w, x_5w = train_and_predict_pm10(filtered_df,forecast_horizon=5, error=Huber(delta=3))


        y_test_1w25, y_pred_1w25, mae_1w, rmse_1w, mape_1w, x_1w25= train_and_predict_pm25(filtered_df,forecast_horizon=1, error=Huber(delta=1))
        y_test_2w, y_pred_2w25, mae_2w, rmse_2w, mape_2w ,x_2w25= train_and_predict_pm25(filtered_df,forecast_horizon=2, error=Huber(delta=1.5))
        y_test_3w, y_pred_3w25, mae_3w, rmse_3w, mape_3w, x_3w25  = train_and_predict_pm25(filtered_df,forecast_horizon=3, error=Huber(delta=2))
        y_test_4w, y_pred_4w25, mae_4w, rmse_4w, mape_4w, x_4w25= train_and_predict_pm25(filtered_df,forecast_horizon=4, error=Huber(delta=2.5))
        y_test_5w, y_pred_5w25, mae_5w, rmse_5w, mape_5w, x_5w25 = train_and_predict_pm25(filtered_df,forecast_horizon=5, error=Huber(delta=3))

        data[location]={"pm25":filtered_df[filtered_df['year'] == 2024]["pm25"].values.tolist()+[ x_1w25.item(), x_2w25.item(), x_3w25.item(), x_4w25.item(), x_5w25.item()],
                    "pm10": filtered_df[filtered_df['year'] == 2024]["pm10"].values.tolist()+[ x_1w.item(), x_2w.item(), x_3w.item(), x_4w.item(), x_5w. item()],
                    "week":list(range(1, max(filtered_df[ (filtered_df['year'] == 2024)]["week"].values.tolist())+6))

                    }
  return truncate_from_back(data)



def getDataFromDB():
    data = {}
    
    db_conn  = create_engine("postgresql://colab:z9CeH0zNAiM5IaVpfctf1r@db:5432/datasciencesociety")
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
            query = "SELECT * FROM pollutants_historics"
            df = pd.read_sql(query, conn)
            df=df.drop(['year_week', 'year_week_station_ID'], axis=1)
            return df
    except Exception as e:
        print(f"Data extraction failed: {e}")
        return []

def truncate_from_back(data):
    for location, metrics in data.items():
        # Find the minimum length among the lists for each location
        min_length = min(len(metrics['pm25']), len(metrics['pm10']), len(metrics['week']))
        
        # Truncate each list from the back to match the minimum length
        metrics['pm25'] = metrics['pm25'][-min_length:]
        metrics['pm10'] = metrics['pm10'][-min_length:]
        metrics['week'] = metrics['week'][-min_length:]

    return data
  
def create_lagged_features(data, n_lags, forecast_horizon=1):
    X, y = [], []
    for i in range(n_lags, len(data) - forecast_horizon + 1):
        X.append(data[i-n_lags:i])
        y.append(data[i + forecast_horizon - 1])
    return np.array(X), np.array(y)

def create_lagged_features_nextpred(data, n_lags):
    X = []
    for i in range(n_lags, len(data) + 1):
        X.append(data[i - n_lags:i])
    return np.array(X)

# Function to train and predict using a given forecast horizon and calculate metrics
def train_and_predict_pm10(dataframe, forecast_horizon, error="mse"):
    # Reshape and scale the entire pm10 data for training
    pm10_data = dataframe['pm10'].values.reshape(-1, 1)
    scaler = MinMaxScaler()
    pm10_data_scaled = scaler.fit_transform(pm10_data)

    # Create lagged features for training
    X, y = create_lagged_features(pm10_data_scaled, n_lags, forecast_horizon)

    # Reshape and scale only the last n_lags values for future prediction separately
    data_for_lagging_next_pred = dataframe.tail(n_lags)['pm10'].values.reshape(-1, 1)
    data_for_lagging_next_pred_scaled = scaler.transform(data_for_lagging_next_pred)
    x_future_pred = create_lagged_features_nextpred(data_for_lagging_next_pred_scaled, n_lags)


    # Split data into training and test sets
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=test_size, shuffle=False)

    # Define and compile the LSTM model
    model = Sequential()
    model.add(LSTM(50, activation='relu', input_shape=(n_lags, 1)))
    model.add(Dense(1))
    model.compile(optimizer='adam', loss=error)

    # Train the model
    model.fit(X_train, y_train, epochs=43, verbose=0)

    # Make predictions on test data
    y_pred = model.predict(X_test)

    # Make the next prediction using the reshaped and scaled future data
    next_pred = model.predict(x_future_pred)

    # Inverse scale predictions and actual values
    y_pred_rescaled = scaler.inverse_transform(y_pred)
    y_test_rescaled = scaler.inverse_transform(y_test)
    next_pred_rescaled = scaler.inverse_transform(next_pred)

    # Calculate metrics
    mae = mean_absolute_error(y_test_rescaled, y_pred_rescaled)
    rmse = mean_squared_error(y_test_rescaled, y_pred_rescaled, squared=False)
    mape = mean_absolute_percentage_error(y_test_rescaled, y_pred_rescaled) * 100

    return y_test_rescaled.flatten(), y_pred_rescaled.flatten(), mae, rmse, mape, next_pred_rescaled.flatten()


def train_and_predict_pm25(dataframe, forecast_horizon, error="mse"):
    # Reshape and scale the entire pm10 data for training
    pm10_data = dataframe['pm25'].values.reshape(-1, 1)
    scaler = MinMaxScaler()
    pm10_data_scaled = scaler.fit_transform(pm10_data)

    # Create lagged features for training
    X, y = create_lagged_features(pm10_data_scaled, n_lags, forecast_horizon)

    # Reshape and scale only the last n_lags values for future prediction separately
    data_for_lagging_next_pred = dataframe.tail(n_lags)['pm25'].values.reshape(-1, 1)
    data_for_lagging_next_pred_scaled = scaler.transform(data_for_lagging_next_pred)
    x_future_pred = create_lagged_features_nextpred(data_for_lagging_next_pred_scaled, n_lags)

    # Split data into training and test sets
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=test_size, shuffle=False)

    # Define and compile the LSTM model
    model = Sequential()
    model.add(LSTM(50, activation='relu', input_shape=(n_lags, 1)))
    model.add(Dense(1))
    model.compile(optimizer='adam', loss=error)

    # Train the model
    model.fit(X_train, y_train, epochs=43, verbose=0)

    # Make predictions on test data
    y_pred = model.predict(X_test)

    # Make the next prediction using the reshaped and scaled future data
    next_pred = model.predict(x_future_pred)

    # Inverse scale predictions and actual values
    y_pred_rescaled = scaler.inverse_transform(y_pred)
    y_test_rescaled = scaler.inverse_transform(y_test)
    next_pred_rescaled = scaler.inverse_transform(next_pred)

    # Calculate metrics
    mae = mean_absolute_error(y_test_rescaled, y_pred_rescaled)
    rmse = mean_squared_error(y_test_rescaled, y_pred_rescaled, squared=False)
    mape = mean_absolute_percentage_error(y_test_rescaled, y_pred_rescaled) * 100

    return y_test_rescaled.flatten(), y_pred_rescaled.flatten(), mae, rmse, mape, next_pred_rescaled.flatten()

generate()
