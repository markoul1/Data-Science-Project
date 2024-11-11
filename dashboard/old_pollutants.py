import pandas as pd
import json  # Import json to use for dumping the JSON correctly

def generate():
    # Define your locations
    locations = [
        "All sensors",
        "Lambrate",
        "Corso 22 Marzo",
        "Via Franco Albini",
        "Piazza Sempione",
        "Oggiaro",
        "Via Federico Chopin"
    ]

    # Create a dictionary to hold data for each location
    locations_data = {}

    # Generate data for each location
    for location in locations:
        # Example DataFrame for each location
        data = {
            'Hour': [f"{i}:00" for i in range(24)],
            'PM25': [20, 21, 22, 19, 18, 25, 27, 30, 29, 28, 26, 24, 22, 21, 20, 19, 18, 15, 12, 10, 15, 20, 25, 30],
            'PM10': [30, 31, 32, 29, 28, 35, 37, 40, 39, 38, 36, 34, 32, 31, 30, 29, 28, 25, 22, 20, 25, 30, 35, 40]
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

    # Prepare the final JSON structure
    json_data = {
        "locations": locations_data
    }

    # Convert to JSON string
    json_string = json.dumps(json_data, indent=4)  # Convert Python dictionary to JSON string with indentation

    # Save JSON to a file
    with open('/usr/share/nginx/html/plotData/current/pollutants/data.json', 'w') as json_file:
        json_file.write(json_string)  # Write the JSON string directly to the file
    print("Generated pollutants")

# Call the function to generate the JSON
generate()
