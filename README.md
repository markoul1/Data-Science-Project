# Milan Air Quality Dashboard

## Badges

![Contributions Welcome](https://img.shields.io/badge/Contributions-Welcome-brightgreen.svg)
![Python Version](https://img.shields.io/badge/Python-3.8%2B-blue.svg)
![Jupyter Notebook](https://img.shields.io/badge/Made%20with-Jupyter-blue.svg)
![Google Drive](https://img.shields.io/badge/Google%20Drive-Collaborative-yellow.svg)
![Uses JSON](https://img.shields.io/badge/Uses-JSON-blue.svg)
![APIs](https://img.shields.io/badge/API-Integrated-brightgreen.svg)
![PostgreSQL](https://img.shields.io/badge/Database-PostgreSQL-blue.svg)
![Docker](https://img.shields.io/badge/Container-Docker-blue.svg)


## How to Run the Project
To run the realtime dashboard pleas enter  into the  doashboard folder and procede to write the following command into your terminal docker-compose up.

All the data analysis was performed using jupyter notebooks. These are self-contained and do not need any particular setup to be executed.
Some scripts are currently deployed and scheduled to run every hour on a raspberry pi to perform extraction, some manipulation, and insertion in the PostgreSQL.
These scripts are available in the "scheduled scripts" folder. Please, **do not run these scripts outside the raspberry-pi, they perform inserts on the DB**. A dump of the DB is available in the repository.


## Overview

This project develops a real-time air quality dashboard for Milan. It achieves that by integrating data from AQICN (air quality), Open-Meteo (weather), and HERE Vector Tile (traffic) to provide insights into pollution trends, traffic patterns, and weather influences. It aggregates the data from the APIs, processes it through an ETL pipeline, and visualizes trends and predictions in a dashboard interface. Its use is meant to assist stakeholders in making informed decisions. Key features include:
- Explanatory Analysis plots.
- Interactive map of Milan.
- Visualizations of Weather data.
- KPIs concerning pollutant data.


#### 1. Exploratory Analysis for Air Quality 

In this file the project implements an in-depth exploratory analysis of the pollution data gathered from the city of Milan. Its goal is to explore trends and relationships that could be found in the dataset, providing valuable notes into air quality over time.

> **Note:** This analysis was mainly for invastigative porpuses and **will not be included** in the dashboard.

<img src="https://drive.google.com/uc?id=1CSzpXi49F-KWKQt86UcchywiWygFcocb" alt="Exploratory Analysis Screenshot" width="50%"/>

#### 2. Traffic API

This file purpose is to fetch real-time traffic data using a traffic API to be uploaded in the dashboard. The data found are displayed on an **interactive map**, enabling users to **explore** the map and view the various traffic patterns in Milan. This feature is mandatory to understand the relationship between traffic and pollution levels.

<img src="https://drive.google.com/uc?id=1-qF8CL0CnO1b5AHf4TVUyT4teeiZT_mR" alt="Traffic Map Screenshot" width="30%"/>

#### 3. Exploratory Analysis for Historical Weather Data

This part of code is responsible for Visualizating historical weather data of Milan, illustrating how weather patterns like humidity, wind speed, temperature, percipitation, cloud coverage correlate with air quality. It examines historical weather trends so that the dashboard can offer insights into seasonal pollution patterns as far as future forecasts. 

<img src="https://drive.google.com/uc?id=1_wqicieUhvVdzuA9tdQZ7n9Ea3fbQvqT" alt="Historical Weather Data Screenshot" width="50%"/>

#### 4. Kpis concerning pollutants

**pollutant level 2.5:** PM2.5 represents fine particulate matter with a diameter of 2.5 micrometers or less. An importance metric due to the danger of its nature. Tracking PM2.5 levels allows policymakers to understand and address pollution sources that most impact public health.

<img src="https://drive.google.com/uc?id=1ucghr1fHWccgDLL9Xyx4e6I8BSVrg4bL" alt="KPI of the maximum allowed pollutant level of 2.5" width="25%"/>

**maximum pollutant level 10:** PM10 includes larger particles up to 10 micrometers in diameter, often from sources like construction dust, road dust, and vehicle emissions. Monitoring the maximum PM10 level highlights peak pollution incidents, which can help in recognizing high-exposure events that may require immediate action.

<img src="https://drive.google.com/uc?id=1yiS9AJLv4OWt1_KCf7Ot6teBQhpY9kkx" alt="KPI of the maximum allowed pollutant level 10" width="25%"/>

**average of pm2.5:** The average PM2.5 level over a specified period provides an overall picture of fine particulate pollution trends, helping stakeholders track how air quality changes seasonally or in response to policy interventions.

<img src="https://drive.google.com/uc?id=19uCEgmK3TJ6YzdX_cH0CU3qIgxs3A24L" alt="Kpi of the average of pm2.5" width="25%"/>

**average of pm10:** Similar to PM2.5, the average PM10 level indicates broader trends in coarse particulate matter, supporting the analysis of long-term pollution impacts from sources like industrial and vehicle emissions.

<img src="https://drive.google.com/uc?id=11vaQQSJftXSwAlVVlyr_dHI2EqDai0zV" alt="KPI of the average of pm10" width="25%"/>

**overall quality index:** The overall quality index combines multiple pollutants into a single score, making it easier to communicate air quality status to the public. This composite index helps decision-makers quickly assess the general air quality and implement measures when necessary.

<img src="https://drive.google.com/uc?id=1i13nUW4x4Im70Ql-d3zIPx8dSXqECURw" alt="KPI of the overall quality index" width="25%"/>

## Data Processing

Each dataset undergoes extensive ETL processes, which include:

**1. Data Cleaning:** Addresing missing values and outliers to ensure reliability

**2. Aggregation:** Daily pollutant and weather data are aggregated weekly to reduce noise and highlight seasonal trends.

**3. Feuture Engineering:** Additional temporal features (e.g., day of the week, week number) are generated to improve seasonal analyses.

**4. Scaling:** Normalization techniques ensure comparability across metrics.

## Future work

**Enhanced Predictive Models:** Exploring alternative or hybrid models to improve prediction accuracy.

**Traffic Data Integration:** Refining the traffic analysis model to extract more granular insights.

**User Interface Enhancements:** Adding more interactive visualizations to the dashboard.


## Authors

- lucas del Arco
- Zhichao Yao
- Liang Wang
- Pablo Arteaga
- Agostino Sorbo
- Konstantinos Markoulakis

