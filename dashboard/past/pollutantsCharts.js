async function fetchPollutantsData() {
    try {
        const response = await fetch('/plotData/past/pollutants/data.json');

        if (!response.ok) {
            throw new Error(`HTTP error! status: ${response.status}`);
        }

        const pollutantsJsonData = await response.json();
        console.log("Fetched pollutants JSON data: ", pollutantsJsonData);

        return pollutantsJsonData; // Return the parsed data
    } catch (error) {
        console.error("Error loading the pollutants JSON data: ", error);
        return null; // Return null if there's an error
    }
}

let pollutantsChart; // Declare the chart variable outside the function

async function createPastPollutantsLinechart(chartId) {
    selectedLocation = getSelectedlocation()
    const pollutantsJsonData = await fetchPollutantsData();

    if (!pollutantsJsonData || !pollutantsJsonData.locations[selectedLocation]) return;

    const locationData = pollutantsJsonData.locations[selectedLocation];
    const hoursArray = locationData.hours;
    const datasetsArray = locationData.datasets;
    const scalesConfig = locationData.scales;
    const chartTitle = locationData.title;
    console.log("Title", chartTitle)

    // Check if the chart already exists
    if (pollutantsChart) {
        // Update the existing chart
        updatePollutantsChart(chartId);
    } else {
        // Create the chart if it does not exist
        pollutantsChart = new Chart(chartId, {
            type: "line",
            data: {
                labels: hoursArray,
                datasets: datasetsArray
            },
            options: {
                plugins: {
                    title: {
                        display: true,
                        text: chartTitle
                    }
                },
                responsive: true,
                maintainAspectRatio: true,
                aspectRatio: 2.7,
                scales: scalesConfig
            }
        });

        // Automatically update the chart every 30 seconds
        setInterval(() => updatePollutantsChart(chartId), 30000);
    }
}

// Function to update the chart
async function updatePollutantsChart(chartId) {
    selectedLocation = getSelectedlocation()
    console.log("Updating pollutants chart for location:", selectedLocation);

    const pollutantsJsonData = await fetchPollutantsData();
    if (!pollutantsJsonData || !pollutantsJsonData.locations[selectedLocation]) return;

    const locationData = pollutantsJsonData.locations[selectedLocation];
    console.log(locationData.datasets)
    const hoursArray = locationData.hours;
    const pm25DataArray = locationData.datasets[0].data;
    const pm10DataArray = locationData.datasets[1].data;
    const chartTitle = locationData.title; // Get the title for the new location

    if (pollutantsChart) { // Ensure the chart instance exists
        pollutantsChart.data.labels = hoursArray;
        pollutantsChart.data.datasets[0].data = pm25DataArray;
        pollutantsChart.data.datasets[1].data = pm10DataArray;
        
        // Update the chart title
        pollutantsChart.options.plugins.title.text = chartTitle; 

        pollutantsChart.update();
    }
}

// Function to handle location change
async function changePollutantsLocation() {
    await createPastPollutantsLinechart("pollutants-plot");
}

function getSelectedlocation(){
    const selector = document.getElementById('location-selector');
    return selector.options[selector.selectedIndex].text
}

// Initial chart creation with default location "All"
changePollutantsLocation();

// Example HTML to select location
document.getElementById('location-selector').addEventListener('change', function () {
    changePollutantsLocation(); // Updated to call renamed function
});
