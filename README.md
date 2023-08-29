# Healthcare Appointments Analytics


The **Healthcare Appointments Analytics** project is a data analysis project focused on understanding the dynamics of medical appointments and their underlying factors affecting patient attendance and no-show rates. Through advanced analytical techniques, this project aims to extract actionable insights that can enhance patient engagement and optimize resource allocation within healthcare settings.

## Table of Contents

- [Project Overview](#project-overview)
- [Dataset](#dataset)
- [Installation](#installation)
- [Usage](#usage)
- [Analysis](#SQL analysis)
- [Contributing](#contributing)

## Project Overview

The Healthcare Appointments Analytics project is a data analysis initiative focused on understanding the dynamics of medical appointments and their underlying factors affecting patient attendance and no-show rates. Through advanced analytical techniques, this project aims to extract actionable insights that can enhance patient engagement and optimize resource allocation within healthcare settings.

## Dataset

The primary dataset for this project is `Hospital_patients_datasets.csv`. This dataset contains a range of variables related to patient appointments, including but not limited to:

- `PatientId`: Unique identifier for each patient.
- `AppointmentID`: Unique identifier for each appointment.
- ... 

## Installation

1. Clone this repository to your local machine using:

   ```
   git clone https://github.com/Paulda07/Time-Series-Analysis-using-Medical-Data.git
   ```

2. Navigate to the project directory:

   ```
   cd Time-Series-Analysis-using-Medical-Data
   ```

## Usage

1. Ensure you have the dataset file `Hospital_patients_datasets.csv` placed in the project directory.

2. Create the data analysis scripts:

   ```
   python analyze_data.py

   This is a python program which runs the export_the_dataset() function in module2.py
   The rest of the functions are called from within. (self-invocations)
   ```

3. The analysis results can be checked by running the SQL queries present in module3.sql.

## SQL Analysis

To perform more in-depth analysis, you can use the provided SQL queries in the file analysis_queries.sql. These queries allow you to explore various aspects of the dataset:

How many values are there in the given dataset?
Count the number of appointments for each day in the given dataset.
Calculate the average number of appointments per day in the given dataset.
Find the day with the highest number of appointments in the given dataset.
Calculate the monthly average number of appointments in the given dataset.
Find the month with the highest number of appointments in the given dataset.
Calculate the weekly average number of appointments in the given dataset.
Find the week with the highest number of appointments in the given dataset.
Distribution of appointments based on gender in the dataset.
Calculate the number of appointments per weekday in the given dataset.
Calculate the average time between scheduling and the appointment day in the given dataset.
To execute these queries, use your preferred SQL client and connect to your database containing the patients table.

## Contributing

Contributions are welcome and encouraged! To contribute to the project, follow these steps:

1. Fork the repository.

2. Create a new branch for your feature or improvement.

3. Make your changes and commit them with descriptive commit messages.

4. Push your changes to your fork.

5. Open a pull request detailing your changes and their significance.

Feel free to contact us at [pledala1@umbc.edu](mailto:pledala1@umbc.edu) with any questions or feedback! We'd love to hear from you.
