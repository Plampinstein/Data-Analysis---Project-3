const csvFiles = [
    "../Clean Data Project 3/CSV's/Cases and fatalities/cases and fatalities 2020.csv",
    "../Clean Data Project 3/CSV's/Cases and fatalities/cases and fatalities 2021.csv",
    "../Clean Data Project 3/CSV's/Cases and fatalities/cases and fatalities 2022.csv",
    "../Clean Data Project 3/CSV's/Cases and fatalities/cases and fatalities 2023.csv",
  ];
  function fetchCSVData(csvFiles) {
    const promises = csvFiles.map((file) => d3.csv(file));
    return Promise.all(promises);
  }
  fetchCSVData(csvFiles)
  .then((dataArray) => {
    // Loop through the dataArray to create charts for each year
    dataArray.forEach((data, index) => {
      // You can access data for each year using data[index]

      // Statewide cases and fatalities chart
      const container = d3.select("#cases_fatalities");
      const width = 600;
      const height = 400;

      const svg = container.append("svg")
        .attr("width", width)
        .attr("height", height);

      // Parse the date values if needed
      data.forEach(d => {
        d.county = new Date(d.county);
        d.value = +d.value; // Convert to a number
      });

      // Set up scales for x and y
      const xScale = d3.scaleTime()
        .domain(d3.extent(data, d => d.county))
        .range([0, width]);

      const yScale = d3.scaleLinear()
        .domain([0, d3.max(data, d => d.value)])
        .range([height, 0]);

      // Create a line generator
      const line = d3.line()
        .x(d => xScale(d.county))
        .y(d => yScale(d.value));

      // Append the line to the SVG
      svg.append("path")
        .datum(data)
        .attr("fill", "none")
        .attr("stroke", "steelblue")
        .attr("stroke-width", 2)
        .attr("d", line);

      
    });
  });
