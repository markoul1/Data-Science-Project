async function fetchCurrentWeatherData() {
    try {
        const response = await fetch('/plotData/current/weather/data.json');

        if (!response.ok) {
            throw new Error(`HTTP error! status: ${response.status}`);
        }

        const currentWeatherJsonData = await response.json();
        console.log("Fetched current weather JSON data: ", currentWeatherJsonData);

        return currentWeatherJsonData; // Return the parsed data
    } catch (error) {
        console.error("Error loading the current weather JSON data: ", error);
        return null; // Return null if there's an error
    }
}

async function createCurrentWeatherLinechart(chartId) {
    const currentWeatherJsonData = await fetchCurrentWeatherData();

    if (!currentWeatherJsonData) return;
    
    const data = currentWeatherJsonData.weather_metrics;
    console.log("data", data)
    const datasetsArray = extractDatasetByChartId(chartId, data)
    console.log(chartId, datasetsArray)
    const hoursArray = data.hours;
    
    const scalesConfig = data.scales;
    const chartTitle = data.title;
    console.log("Title", chartTitle)

    // Check if the chart already exists
    if (Chart.getChart(chartId)) {
        // Update the existing chart
        updateCurrentWeatherChart(chartId);
    } else {
        // Create the chart if it does not exist
        currentWeatherChart = new Chart(chartId, {
            type: "line",
            data: {
                labels: hoursArray,
                datasets: datasetsArray
            },
            options: {
                plugins: {
                    title: {
                        display: false,
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
        setInterval(() => updateCurrentWeatherChart(chartId), 30000);
    }
}

function extractDatasetByChartId(chartId, data) {
    const weatherItem = chartId.split("-")[0];
    return data.datasets.filter(dataset => 
        dataset.label && dataset.label.toLowerCase().includes(weatherItem)
    );
}

// Function to update the chart
async function updateCurrentWeatherChart(chartId) {
    currentWeatherChart = Chart.getChart(chartId)

    const currentWeatherJsonData = await fetchCurrentWeatherData();
    if (!currentWeatherJsonData) return;

    const data = currentWeatherJsonData;
    const weeksArray = data.weeks;
    const datasetsArray = extractDatasetByChartId(chartId, data);
    const chartTitle = data.title; // Get the title for the new location

    if (currentWeatherChart) { // Ensure the chart instance exists
        currentWeatherChart.data.labels = weeksArray;
        currentWeatherChart.data.datasets = extractDatasetByChartId(chartId, data);
        
        // Update the chart title
        currentWeatherChart.options.plugins.title.text = chartTitle; 

        currentWeatherChart.update();
    }
}

createCurrentWeatherLinechart("wind-weather-plot")
createCurrentWeatherLinechart("precipitation-weather-plot")
createCurrentWeatherLinechart("temperature-weather-plot")