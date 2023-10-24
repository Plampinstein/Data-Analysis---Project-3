// const csvFiles = [
//     "../Clean Data Project 3/CSVs/Cases and fatalities/cases and fatalities 2020.csv",
//     "../Clean Data Project 3/CSVs/Cases and fatalities/cases and fatalities 2021.csv",
//     "../Clean Data Project 3/CSVs/Cases and fatalities/cases and fatalities 2022.csv",
//     "../Clean Data Project 3/CSVs/Cases and fatalities/cases and fatalities 2023.csv",
//   ];
//   function fetchCSVData(csvFiles) {
//     const promises = csvFiles.map((file) => d3.csv(file));
//     return Promise.all(promises);
//   }
//   fetchCSVData(csvFiles)
//   .then((dataArray) => {
//     // Loop through the dataArray to create charts for each year
//     dataArray.forEach((data, index) => {
//       // You can access data for each year using data[index]

//       // Statewide cases and fatalities chart
//       const container = d3.select("#cases_fatalities");
//       const width = 600;
//       const height = 400;

//       const svg = container.append("svg")
//         .attr("width", width)
//         .attr("height", height);

//       // Parse the date values if needed
//       data.forEach(d => {
//         d.county = new Date(d.county);
//         d.value = +d.value; // Convert to a number
//       });

//       // Set up scales for x and y
//       const xScale = d3.scaleTime()
//         .domain(d3.extent(data, d => d.county))
//         .range([0, width]);

//       const yScale = d3.scaleLinear()
//         .domain([0, d3.max(data, d => d.value)])
//         .range([height, 0]);

//       // Create a line generator
//       const line = d3.line()
//         .x(d => xScale(d.county))
//         .y(d => yScale(d.value));

//       // Append the line to the SVG
//       svg.append("path")
//         .datum(data)
//         .attr("fill", "none")
//         .attr("stroke", "steelblue")
//         .attr("stroke-width", 2)
//         .attr("d", line);

      
//     });
//   });

// Define the width and height for the chart
const width = 600;
const height = 400;

// Select the chart container
const container = d3.select("#barchart");

// Create an SVG element for the chart
const svg = container.append("svg")
    .attr("width", width)
    .attr("height", height);

// Load the CSV file and create the bar chart
d3.csv("../data/CSVs/Cases and fatalities/Cases and fatalities 2020.csv").then(function (data) {
    // Convert the numeric values to numbers
    data.forEach(function (d) {
        d.label = d.County;
        d.value1 = parseInt(d["Confirmed Cases"]);
        d.value2 = parseInt(d["Fatalities"]);
    });

    const width = 600;
    const height = 400;

    // Create a scale for the x-axis (labels)
    const xScale = d3.scaleBand()
        .domain(data.map(d => d.label))
        .range([0, width])
        .padding(0.1);

    // Create a scale for the y-axis (values)
    const yScale = d3.scaleLinear()
        .domain([0, d3.max(data, d => Math.max(d.value1, d.value2))])
        .range([0, height]);

    // Create bars for value1
    svg.selectAll(".bar1")
        .data(data)
        .enter()
        .append("rect")
        .attr("class", "bar")
        .attr("x", d => xScale(d.label))
        .attr("width", xScale.bandwidth() / 2)
        .attr("y", d => yScale(d.value1))
        .attr("height", d => height - yScale(d.value1));

    // Create bars for value2
    svg.selectAll(".bar2")
        .data(data)
        .enter()
        .append("rect")
        .attr("class", "bar")
        .attr("x", d => xScale(d.label) + xScale.bandwidth() / 2)
        .attr("width", xScale.bandwidth() / 2)
        .attr("y", d => yScale(d.value2))
        .attr("height", d => height - yScale(d.value2));

    // Create x-axis
    svg.append("g")
        .attr("class", "x-axis")
        .attr("transform", `translate(0, ${height})`)
        .call(d3.axisBottom(xScale));

    // Create y-axis
    svg.append("g")
        .attr("class", "y-axis")
        .call(d3.axisLeft(yScale));
});
    
// create CSV string
var csvString = [
  "../data/CSVs/Commulative daily cases by year/Commulative daily cases 2021.csv"
];
anychart.onDocumentLoad(function () {
  // create an instance of a pie chart
  var chart = anychart.pie();
  // set the data
  chart.data(csvString);
  // set chart title
  chart.title("Commulative daily cases 2021");
  // set the container element 
  chart.container("container");
  // initiate chart display
  chart.draw();
});
