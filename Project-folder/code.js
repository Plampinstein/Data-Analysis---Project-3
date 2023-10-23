const csvFiles = [
    "path/to/file1.csv",
    "path/to/file2.csv",
    "path/to/file3.csv",
    // Add more file paths as needed
  ];
  function fetchCSVData(csvFiles) {
    const promises = csvFiles.map((file) => d3.csv(file));
    return Promise.all(promises);
  }
  fetchCSVData(csvFiles)
  .then((dataArray) => {
    // dataArray will be an array of data from each CSV file
    console.log(dataArray);

    // Process the data as needed
    // You can access individual data arrays like dataArray[0], dataArray[1], etc.
  });
    