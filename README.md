# Healthcare_Data_Analysis

# Objective
To analyze healthcare datasets and uncover insights about patient outcomes and treatment effectiveness. 
The project focuses on exploratory and statistical analysis to support healthcare improvements, such as understanding readmission rates or disease prevalence.

# Overview
This project focuses on analyzing healthcare data to gain actionable insights. It involves:
Data Collection
Data storage and preprocessing
Statistical and exploratory analysis

# Tools and Technologies
Languages: Python, SQL, R.
Libraries: Pandas, NumPy, Faker, Matplotlib, Seaborn.
Databases: MySQL, SQLAlchemy.

# Data Collection
### Sources
Mock Data:
Mock data was generated using the `Faker` Python library to simulate healthcare datasets for analysis. Features include:

PatientID: Unique identifier generated using fake.uuid4().
Name: Random names generated with fake.name().
Age: Random integers between 18 and 80.
Gender: Randomly selected as "Male" or "Female".
Diagnosis: Randomly chosen from "Diabetes", "Hypertension", "Flu", and "Asthma".
AdmissionDate: Random dates from the past two years generated with fake.date_between(start_date="-2y", end_date="today").
RecoveryTime (Days): Random integers between 1 and 30.
Readmitted: Randomly selected as "Yes" or "No".

# Data Storage
Database Setup
Database: MySQL was used for storing and managing the data.
Connection: The database was connected using mysql.connector for establishing a connection and SQLAlchemy for seamless integration with pandas.
Data Loading: The healthcare data was loaded into MySQL using the SQLAlchemy engine, which allows efficient data handling and querying.

# Data Cleaning
Handle Missing Data: The dataset was checked for any missing or incomplete values. 
In cases where data was missing, the approach taken was to fill those missing values using a backward fill method, ensuring that the data remained consistent and complete. 
If necessary, invalid rows were removed.

Standardize and Normalize: The clinical measurements, such as blood pressure and glucose levels, were standardized to ensure consistency in units. 
Additionally, numerical values like recovery time were normalized to bring all data into a comparable range, ensuring more accurate analysis.

Validate Data Quality: Several validation checks were performed to ensure data quality. 
This included verifying ranges for age and recovery time, as well as checking for inconsistencies or outliers in the dataset to ensure that the data was both accurate and reliable for analysis.

# Exploratory Data Analysis (EDA)
## 1. Gender Distribution Analysis:
The gender distribution of the patients in the dataset was analyzed by counting the number of male and female patients. A bar chart was plotted to visualize this distribution, with each gender represented by a different color. The chart provides an overview of the dataset's demographic distribution and highlights the variation in patient counts across genders.
Chart Description:
The y-axis represents the count of patients.
The x-axis shows the gender categories (Male, Female).
The chart is scaled to emphasize the range between 200 and 410, which makes the gender differences more noticeable.

## 2. Average Recovery Time by Diagnosis:
The average recovery time for different diagnoses was calculated to identify patterns in treatment and recovery. A bar plot was used to visualize the average recovery time for each diagnosis. This analysis helps understand how different diseases or conditions affect recovery.
Chart Description:
The y-axis represents the average recovery time in days.
The x-axis represents the different diagnosis categories.
The plot also differentiates the diagnoses with colors to highlight recovery trends for each condition.

## 3. Recovery Time Over Time (Trend Analysis):
The average recovery time was analyzed over time to identify any seasonal or time-related trends. The dataset was grouped by month, and the average recovery time for each month was plotted in a line graph to observe any fluctuations over time.
Chart Description:
The x-axis represents the months.
The y-axis represents the average recovery time.
The line graph highlights any trends or patterns in recovery over the months.

## SQL Queries for Insights
1. Age Distribution of Patients:
Analyzed the distribution of patients by gender to understand how male and female patients are represented in the dataset.
2. Most Common Diagnoses:
Identified the most common diagnoses among the patients. This helps in understanding which conditions are most prevalent in the dataset.
3. Table Structure Overview:
A quick overview of the columns in the table was done to understand the data schema and available features for analysis.
4. Total Recovery Time by Gender:
Calculated the average recovery time for patients based on gender. This analysis helps identify if there are any significant differences in recovery time between male and female patients.
5. Patients with a Diagnosis Under Age 40:
Identified patients who are younger than 40 years old and have any diagnosis. This helps focus on a specific demographic group to analyze their medical conditions.
6. Average Age of Patients by Diagnosis:
Analyzed the average age of patients for each diagnosis. This provides insights into which age groups are more likely to be diagnosed with specific conditions.
7. Top 5 Most Frequent Diagnoses:
Focused on identifying the top 5 most frequent diagnoses in the dataset. This helps in understanding the most common health conditions among the patients.
8. Patients Who Have Not Been Readmitted:
Identified patients who have not been readmitted to the hospital, providing insights into patient recovery and the effectiveness of treatments.
9. Recovery Time by Age Group:
Segmented patients into age groups and calculated the average recovery time for each group. This analysis helps to understand how recovery time varies across different age ranges.

# Statistical Analysis
1. Hypothesis Testing:
In this step, we aimed to test if there was a significant difference in the readmission rates between patients diagnosed with diabetes and those without it.
This helps to understand if a diagnosis of diabetes correlates with an increased likelihood of readmission.
The results of this hypothesis test will provide insights into the impact of diabetes on patient readmission rates.
Test performed: T-test to compare the readmission rates between diabetic and non-diabetic patients.

2. Regression Analysis:
A regression model was developed to analyze the relationship between recovery time and various factors such as age and treatment type.
This model helps to understand how these factors influence recovery time and which ones are the most significant predictors.
Model used: Linear regression model to predict recovery time based on age and treatment type.
