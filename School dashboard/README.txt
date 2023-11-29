 IT Schools in Berlin Information Aggregator

Project Overview

This project aims to provide a comprehensive and centralized source of information about IT schools in Berlin. The goal is to assist individuals in their search for the right educational institution by compiling essential details about each school, such as their name, website, address, courses offered, job assistance, telephone number, Google reviews, and location on a map.

 Features

- Consolidated Information: Access all relevant details about IT schools in Berlin in one place.
- Downloadable Reports: Generate reports in multiple formats - CSV, Excel, PDF - for easy offline access.
- Printable HTML Report: Create a well-organized and printable HTML report using Rmarkdown.
- Map Integration:View the location of each school on an interactive map for better understanding.

 How to Use

1.Clone the Repository:
  https://github.com/WalidJMiakhel/R.git

2. Install Dependencies:
   
    Ensure you have R and Rmarkdown installed
   Install additional dependencies as needed
  

3. Gather Information:
   - Populate the `schools.csv` file with details about each IT school in Berlin.

4. Generate Reports:
   - Run the R script to clean and transform data plus to create a leaflet map.
   - Use Rmarkdown to create the HTML report and generate reports in CSV, Excel, and PDF formats.

5. Access Reports:
   - Find the generated reports in the `output` directory.

Data Structure

The `schools.csv` file should have the following columns:

- Name: School name.
- Website: Official website of the school.
- Address: Physical location of the school.
- Courses: List of courses offered.
- Job Assistance: Information on job placement assistance.
- Telephone: Contact number for inquiries.
- Google Review: Average Google review rating.
- Latitude: Latitude coordinate for mapping.
- Longitude: Longitude coordinate for mapping.

 Contributors

- Walid Jan Miakhel
- walidmiakhel@gmail.com

Feel free to contribute by adding more schools or improving the reporting functionality.