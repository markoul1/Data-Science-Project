var locations = [
    {'location_coordinates': [45.478, 9.224], 'name': 'Lambrate', 'pm10': 17, 'pm25': 52, 'url': 'https://api.waqi.info/feed/A156526?token=4eeb9d60ca90b4e6e7877e45dd5eae80ba634bf1', 'tooltip_offset': [10, 10]}, 
    {'location_coordinates': [45.462, 9.21], 'name': 'Corso 22 Marzo', 'pm10': 11, 'pm25': 41, 'url': 'https://api.waqi.info/feed/A97507?token=4eeb9d60ca90b4e6e7877e45dd5eae80ba634bf1', 'tooltip_offset': [3, 13]}, 
    {'location_coordinates': [45.442, 9.212], 'name': 'Via Franco Albini', 'pm10': 23, 'pm25': 58, 'url': 'https://api.waqi.info/feed/A246697?token=4eeb9d60ca90b4e6e7877e45dd5eae80ba634bf1', 'tooltip_offset': [-3, 13]}, 
    {'location_coordinates': [45.475697, 9.172453], 'name': 'Piazza Sempione', 'pm10': 28, 'pm25': 83, 'url': 'https://api.waqi.info/feed/A21373?token=4eeb9d60ca90b4e6e7877e45dd5eae80ba634bf1', 'tooltip_offset': [0, -9]}, 
    {'location_coordinates': [45.486, 9.19], 'name': 'Oggiaro', 'pm10': 12, 'pm25': 36, 'url': 'https://api.waqi.info/feed/A66889?token=4eeb9d60ca90b4e6e7877e45dd5eae80ba634bf1', 'tooltip_offset': [8, -3]}, 
    {'location_coordinates': [45.426, 9.206], 'name': 'Via Federico Chopin', 'pm10': 29, 'pm25': 79, 'url': 'https://api.waqi.info/feed/A74863?token=4eeb9d60ca90b4e6e7877e45dd5eae80ba634bf1', 'tooltip_offset': [-5, 0]} 
];

// Get the select element
var locationSelector = document.getElementById('location-selector');

// Add "All sensors" option with the full array as value
var allSensorsOption = document.createElement('option');
allSensorsOption.value = JSON.stringify(locations); // Store the full locations array
allSensorsOption.textContent = 'All sensors';
locationSelector.appendChild(allSensorsOption);

// Populate the select dropdown with individual location options
locations.forEach(function(location) {
    var option = document.createElement('option');
    option.value = JSON.stringify([location]); // Store the single location as an array
    option.textContent = location.name; // Set the label
    locationSelector.appendChild(option);
});

// Handle event when the user selects a different location
locationSelector.addEventListener('change', function() {
    var locations = JSON.parse(this.value);
    console.log('Selected locations:', locations);  // Do something with the selected locations
});
