async function fetchData() {
    try {
        // Fetch the JSON data from the file
        const response = await fetch('/plotData/current/kpi/data.json');

        // Check if the response is OK (status 200)
        if (!response.ok) {
            throw new Error(`HTTP error! status: ${response.status}`);
        }

        // Parse the JSON data
        return await response.json();
    } catch (error) {
        console.error("Error loading the JSON data: ", error);
        return null; // Return null if there's an error
    }
}

async function createLinechart(chartId, kpiKey) {
    const jsonData = await fetchData();

    if (!jsonData || !jsonData.kpis[kpiKey]) return;

    const kpiData = jsonData.kpis[kpiKey];
    const hours = kpiData.hours;
    const datasets = kpiData.datasets;
    const scales = kpiData.scales;
    const title = kpiData.title;
    const threshold = kpiData.threshold; // Get the threshold from the JSON data

    // Create or update the chart
    const myChart = new Chart(chartId, {
        type: "line",
        data: {
            labels: hours,
            datasets: datasets // Use datasets from JSON
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            scales: scales,
            plugins: {
                legend: {
                    display: false // Hides the legend
                },
                title: {
                    display: true,
                    text: title
                },
                annotation: { // Add annotation plugin configuration
                    annotations: {
                        thresholdLine: {
                            type: 'line',
                            yMin: threshold, // Use the threshold value from JSON
                            yMax: threshold, // Keep the same value for horizontal line
                            borderColor: 'red', // Color of the line
                            borderWidth: 2, // Width of the line
                            borderDash: [5, 5], // Dashed line pattern
                            label: {
                                content: 'Threshold', // Label for the line
                                enabled: true,
                                position: 'end', // Position of the label
                                font: {
                                    size: 12,
                                    weight: 'bold',
                                    family: 'Arial',
                                    color: 'red' // Label color
                                },
                                yAdjust: -10 // Adjust vertical position of the label
                            }
                        }
                    }
                }
            }
        }
    });

    // Automatically update the chart every hour
    setInterval(() => updateChart(chartId, kpiKey), 300);
}


// Function to update the chart
async function updateChart(chartId, kpiKey) {
    const jsonData = await fetchData();
    if (!jsonData || !jsonData.kpis[kpiKey]) return;

    const kpiData = jsonData.kpis[kpiKey];
    const hours = kpiData.hours;
    const pm25Data = kpiData.datasets[0].data;

    const chartInstance = Chart.getChart(chartId);
    if (chartInstance) {
        chartInstance.data.labels = hours;
        chartInstance.data.datasets[0].data = pm25Data;
        chartInstance.update();
    }
}

createLinechart("max25-plot", "Maximum pollutant level 2.5 (µg/m³)");
createLinechart("max10-plot", "Maximum pollutant level 10 (µg/m³)");
createLinechart("avg25-plot", "Average of 2.5 (µg/m³)");
createLinechart("avg10-plot", "Average of 10 (µg/m³)");
createLinechart("overall-plot", "Average quality index (aqi)");