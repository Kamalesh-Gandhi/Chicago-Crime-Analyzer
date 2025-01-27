# Chicago-Crime-Analyzer

## Introduction
The **Chicago Crime Analyzer** project leverages data analytics and visualization to gain insights into crime patterns in Chicago. By examining publicly available crime datasets, this project helps identify trends, hotspots, and correlations among various crime types, locations, and timeframes.

## Problem Statement
Chicago, like many metropolitan cities, experiences a high volume of crime incidents. However, deriving actionable insights from vast crime data remains a challenge. This project aims to tackle this issue by:
- Analyzing crime trends over different time periods.
- Identifying high-crime zones for better law enforcement planning.
- Evaluating the effectiveness of arrests.
- Understanding the relationship between crime types and locations.
- Assisting policymakers in data-driven decision-making.
- Keeping communities informed to enhance public safety.

## Project Workflow
1. **Data Collection**: Importing crime datasets containing attributes such as crime type, description, date, location, and geographic coordinates.
2. **Data Cleaning & Processing**: Handling missing values, eliminating duplicates, and standardizing formats.
3. **Exploratory Data Analysis (EDA)**: Analyzing trends over time, mapping crime hotspots, and categorizing crime types.
4. **SQL-Based Insights**: Storing structured crime data and running SQL queries to extract meaningful insights.
5. **Power BI Visualization**: Developing an interactive dashboard for intuitive crime data analysis.

## Technologies Used
| Technology | Purpose |
|------------|---------|
| Python | Data processing, cleaning, and analysis |
| Pandas | Data manipulation & transformation |
| Plotly | Interactive data visualization |
| MySQL | Storing and querying structured crime data |
| Power BI | Dashboard visualization for crime trends |
| SQLAlchemy | ORM for efficient database interaction |
| Streamlit | Web framework for interactive applications |

## Installation & Setup
To set up the project, install the required dependencies using:
```bash
pip install pandas streamlit sqlalchemy pymysql plotly-express
```

## Project Structure
### 1. **Chicago_Crime_Analyzer_Report.docx**
- A comprehensive report detailing insights and findings from the dataset.

### 2. **Crime_Data.xlsx**
- The raw dataset containing crime records.

### 3. **Processed_Crime_Data.xlsx**
- The cleaned dataset after preprocessing.

### 4. **CrimeAnalysis_Insights_Query.sql**
- SQL queries designed to extract meaningful crime-related insights.

### 5. **Data_Cleaning_Preprocessing.ipynb**
- A Jupyter Notebook handling data cleaning and processing.

### 6. **EDA_Chicago_Crime_Analyzer.ipynb**
- A Jupyter Notebook focusing on exploratory data analysis.

### 7. **Handle_SQL_Database.py**
- A Python script for handling MySQL database operations.

### 8. **Chicago Crime Analysis.pbix**
- A Power BI dashboard for interactive data visualization.

## Key Learnings & Takeaways
- **Data Processing**: Cleaning and handling inconsistencies in large datasets.
- **Exploratory Data Analysis (EDA)**: Identifying trends using Python visualization tools.
- **Database Management (MySQL)**: Extracting insights through structured queries.
- **Power BI Dashboarding**: Creating interactive visualizations for better decision-making.
- **Integration of Python & SQL**: Streamlining data storage, querying, and analysis.
- **Data-Driven Decision Making**: Applying analytics for improved crime prevention strategies.

## How to Use the Project
### 1. **Run Data Processing**
- Open `Data_Cleaning_Preprocessing.ipynb` and execute all cells to clean and store the dataset in MySQL.

### 2. **Analyze SQL Insights**
- Import `CrimeAnalysis_Insights_Query.sql` into MySQL and run queries to explore crime patterns.

### 3. **Use Power BI Dashboard**
- Open `Chicago Crime Analysis.pbix` in Power BI and interact with the visual insights.

## DataSet Link
- https://docs.google.com/spreadsheets/d/1vkN8HYSZal7xN8cCDM3VzWV9WM9VQxYB/edit?usp=sharing&ouid=113001056554043653827&rtpof=true&sd=true

## PreProcessed DataSet Link
- https://drive.google.com/file/d/1jR0Hd2KMsh1JwMge2qv7ajI3AJOYzBkX/view?usp=sharing

## Powerbi DashBoard Link
https://drive.google.com/file/d/192MkRnEm5TtQkKs0USnGWLMT8_CmhGRb/view?usp=sharing

## Powerbi DashBoard
![image](https://github.com/user-attachments/assets/f2a39cc0-f367-4361-bb74-f4e25c2c9d27)

![image](https://github.com/user-attachments/assets/0847f3c2-2307-4947-967e-52f9b0b68561)


    
