# Group 07 README file

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
All the data analysis was performed using jupyter notebooks. These are self-contained and do not need any particular setup to be executed.
Some scripts are currently deployed and scheduled to run every hour on a raspberry pi to perform extraction, some manipulation, and insertion in the PostgreSQL.
These scripts are available in the "scheduled scripts" folder. Please, **do not run these scripts outside the raspberry-pi, they perform inserts on the DB**. A dump of the DB is available in the repository.


## Project Description

The focus of the project is to analyze air pollution data in Milan to provide insights into pollution trends, traffic patterns, and weather influences. The dashboard combines **real-time traffic data**, **historical weather data**, and **pollution data** to assist stakeholders in making informed decisions. Key features include:
- Explanatory Analysis plots.
- Interactive map of Milan.
- Visualizations of Weather data.


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




## Authors

- lucas del Arco
- Zhichao Yao
- Liang Wang
- Pablo Arteaga
- Agostino Sorbo
- Konstantinos Markoulakis

