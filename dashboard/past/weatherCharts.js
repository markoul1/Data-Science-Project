async function fetchPastWeatherData() {
    try {
        const response = await fetch('/plotData/past/weather/data.json');

        if (!response.ok) {
            throw new Error(`HTTP error! status: ${response.status}`);
        }

        const pastWeatherJsonData = await response.json();
        console.log("Fetched past weather JSON data: ", pastWeatherJsonData);

        return pastWeatherJsonData; // Return the parsed data
    } catch (error) {
        console.error("Error loading the past weather JSON data: ", error);
        return null; // Return null if there's an error
    }
}

async function createPastWeatherLinechart(chartId) {
    const pastWeatherJsonData = await fetchPastWeatherData();

    if (!pastWeatherJsonData) return;
    
    const data = pastWeatherJsonData.weather_metrics;
    const datasetsArray = extractDatasetByChartId(chartId, data)
    const weeksArray = data.weeks;
    
    const scalesConfig = data.scales;
    const chartTitle = data.title;
    console.log("Title", chartTitle)

    // Check if the chart already exists
    if (Chart.getChart(chartId)) {
        // Update the existing chart
        updatePastWeatherChart(chartId);
    } else {
        // Create the chart if it does not exist
        pastWeatherChart = new Chart(chartId, {
            type: "line",
            data: {
                labels: weeksArray,
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
        setInterval(() => updatePastWeatherChart(chartId), 30000);
    }
}

function extractDatasetByChartId(chartId, data) {
    const weatherItem = chartId.split("-")[0];
    return data.datasets.filter(dataset => 
        dataset.label && dataset.label.toLowerCase().includes(weatherItem)
    );
}

// Function to update the chart
async function updatePastWeatherChart(chartId) {
    pastWeatherChart = Chart.getChart(chartId)

    const pastWeatherJsonData = await fetchPastWeatherData();
    if (!pastWeatherJsonData) return;

    const data = pastWeatherJsonData;
    const weeksArray = data.weeks;
    const datasetsArray = extractDatasetByChartId(chartId, data);
    const chartTitle = data.title; // Get the title for the new location

    if (pastWeatherChart) { // Ensure the chart instance exists
        pastWeatherChart.data.labels = weeksArray;
        pastWeatherChart.data.datasets = extractDatasetByChartId(chartId, data);
        
        // Update the chart title
        pastWeatherChart.options.plugins.title.text = chartTitle; 

        pastWeatherChart.update();
    }
}

createPastWeatherLinechart("wind-weather-plot")
createPastWeatherLinechart("precipitation-weather-plot")
createPastWeatherLinechart("temperature-weather-plot")