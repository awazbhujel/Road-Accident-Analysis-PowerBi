# Road Accident Analysis

<p align="center">
  <img src="https://github.com/awazbhujel/Road-Accident-Analysis-PowerBi/blob/main/Road-Accident-PNG.png"  title="hover text">
</p>

## Dataset
The road accident dataset used in this analysis is available for download from https://github.com/awazbhujel/Road-Accident-Analysis-PowerBi/blob/main/Road%20Accident%20Data.xlsx

## Road Accident Dataset Columns Contains:

- Accident_Index: A unique identifier for each accident record.
- Accident Date: The date when the accident occurred.
- Day_of_Week: The day of the week when the accident occurred.
- Junction_Control: Information about the control of the junction where the accident occurred.
- Junction_Detail: Detailed information about the type of junction where the accident occurred.
- Accident_Severity: The severity level of the accident (e.g., fatal, serious, slight).
- Latitude: The latitude coordinate of the accident location.
- Light_Conditions: The light conditions during the accident (e.g., daylight, darkness, street lighting).
- Local_Authority_(District): The local authority district where the accident occurred.
- Carriageway_Hazards: Any road hazards or obstructions present during the accident.
- Longitude: The longitude coordinate of the accident location.
- Number_of_Casualties: The number of casualties (injuries or fatalities) in the accident.
- Number_of_Vehicles: The number of vehicles involved in the accident.
- Police_Force: The police force that attended the accident scene.
- Road_Surface_Conditions: The road surface conditions during the accident (e.g., dry, wet, icy).
- Road_Type: The type of road where the accident occurred (e.g., roundabout, one-way street, dual carriageway).
- Speed_limit: The speed limit on the road where the accident occurred.
- Time: The time when the accident occurred.
- Urban_or_Rural_Area: Indicates whether the accident occurred in an urban or rural area.
- Weather_Conditions: The weather conditions during the accident (e.g., clear, raining, snowing).
- Vehicle_Type: The type of vehicle involved in the accident (e.g., car, motorcycle, bus).

Please download the dataset from the provided link and use it to explore the road accident analysis.

## Software Used
- Windows 10
- Power BI
- SQL Server

## Requirements
The clients want to create a Road Accident Dashboard for the years 2021 and 2022 to gain insights on the following requirements:

Primary KPIs:
- Total Casualties and Total Accidents for the Current Year and YoY growth.
- Total Casualties by Accident Severity for the Current Year and YoY growth.

Secondary KPIs:
- Total Casualties with respect to Vehicle Type for the Current Year.
- Monthly trend comparing Casualties for the Current Year and Previous Year.
- Casualties by Road Type for the Current Year.
- Casualties by Area/Location and by Day/Night for the Current Year.
- Total Casualties and Total Accidents by Location.

## Stakeholders
- Ministry of Transport
- Road Transport Department
- Police Force
- Emergency Services Department
- Road Safety Corps
- Transport Operators
- Traffic Management Agencies
- Public
- Media

## Steps in Project
1. Requirement Gathering
2. Stakeholders in Project
3. Raw Data Overview
4. Connecting Data with Power BI
5. Data Cleaning
6. Data Processing
7. Data Modelling
8. Background Design in PowerPoint
9. Data Visualization
10. Report/Dashboard Building
11. Insights

## POWER BI Functionalities Used In Project
- How to connect to raw data/flat file
- Data Cleaning in Power Query
- Data Processing
- Time Intelligence Function/Calendar Date Table in Power BI
- Data Modelling (Relationship between multiple tables)
- YTD and YoY Growth Calculation using DAX
- KPI and Advanced KPI Generations
- Creating Custom columns and measures in the reports
- Importing Images
- Creating different charts and generating insights
- Exporting the report to users

## Data Preprocessing
Before importing the dataset into Power BI, we performed the following data preprocessing steps:

- Handling Missing Values: We addressed missing values in the dataset by imputing appropriate values or removing rows with excessive missing data.
- Data Type Conversions: We ensured that each column has the correct data type (e.g., date, numeric, categorical) to facilitate proper analysis.
- Handling Outliers: We identified and dealt with outliers in numeric columns based on the context of the analysis.
- Data Aggregation: We aggregated the data to a daily level for analysis.

## Data Exploration
We conducted an initial exploratory analysis of the dataset, which involved the following techniques:

- Descriptive Statistics: We calculated summary statistics to understand the distribution of numerical variables such as casualties and vehicles involved in accidents.
- Data Visualization: We created various charts, including bar charts, maps, and pie charts, to visually explore relationships and patterns in the data.
- Correlation Analysis: We examined correlations between different variables to identify potential associations, such as the relationship between weather conditions and accident severity.

## Data Insights
Based on our road accident analysis, we derived the following key insights:

- "Accident Severity": Weather conditions, road surface conditions, and speed limits have a significant impact on accident severity. Accidents tend to be more severe during adverse weather and slippery road conditions.
- "Junction Types": Certain junction types exhibit a higher number of accidents. Further analysis could be done to identify specific factors contributing to these junctions' accident rates.
- "Urban vs. Rural Areas": Road accidents are more occurred in urban areas, possibly due to higher traffic density and pedestrian activity.

## Recommendations
Considering the data insights, we propose the following recommendations to improve road safety and reduce accidents:

- Launch targeted safety campaigns: Conduct road safety awareness campaigns during adverse weather conditions, emphasizing safe driving practices and reduced speed limits.
- Enhance road infrastructure: Implement traffic control measures, such as traffic lights and roundabouts, at high-risk junctions to reduce accident frequency.
- Improve road surface maintenance: Regularly inspect and maintain road surfaces, especially during adverse weather, to minimize the risk of accidents due to slippery conditions.

## Report Access
[View Dashboard PDF](https://github.com/awazbhujel/Road-Accident-Analysis-PowerBi/blob/main/Road%20Accident.pdf)

The completed Road Accident Dashboard report is available https: https://github.com/awazbhujel/Road-Accident-Analysis-PowerBi/blob/main/Road%20Accident.pbix

## References
The road accident data analysis project was based on a tutorial from YouTube. The tutorial titled "Road Accident Data Analysis in Power BI" by Data Tutorials(https://www.youtube.com/@datatutorials1) served as the foundational guide for this project.

Link to the YouTube Tutorial: https://www.youtube.com/watch?v=RX0ehXijbSk&t=7060s

