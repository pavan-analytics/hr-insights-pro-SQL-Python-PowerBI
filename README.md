👨🏻‍💼 HR Insights Pro: Employee Retention & Performance Analytics | SQL · Python · Power BI

This project demonstrates a real-world end-to-end HR analytics workflow, reflecting the key responsibilities of a professional Data Analyst.
It covers the full journey from data extraction, cleaning, modeling, and analysis to interactive visualization and business recommendations using enterprise-level tools.

📌 Project Overview

The objective of this project is to analyze employee attrition, satisfaction, and performance trends to help HR teams build a data-driven retention strategy.

✅ Data Preparation & EDA (Python): Cleaned and transformed the HR dataset for analysis.
✅ Business Analysis (SQL): Wrote SQL queries to explore attrition drivers, salary patterns, and department-level performance.
✅ Visualization (Power BI): Built an interactive dashboard highlighting attrition hotspots, salary trends, and employee engagement metrics.
✅ Reporting: Compiled findings and recommendations in a structured professional report and presentation.

🧩 Project Workflow
1. Data Preparation (Python)

Imported and explored the HR Employee Attrition dataset.

Checked data integrity, handled missing values, and standardized column names.

Created new columns (age_group, experience_level, attrition_flag) for better segmentation.

Connected Python to PostgreSQL using SQLAlchemy for SQL-based business analysis.

2. SQL Analysis

Created the employee_attrition database in PostgreSQL.

Loaded the cleaned dataset from Python into the SQL server.

Executed 10+ SQL queries to uncover key insights:

Attrition by department and job role

Impact of overtime and commute distance on attrition

Salary fairness by level and performance

Education and satisfaction correlations

Stored and validated results for visualization.

3. Visualization (Power BI)

Connected SQL database to Power BI for real-time analytics.

Designed an interactive HR dashboard featuring:

Attrition KPIs and overall rate

Department- and role-wise attrition analysis

Overtime vs attrition correlation

Salary distribution by experience and gender

Employee satisfaction trends

Added slicers for dynamic filtering: Department, Gender, Age Group, Experience Level, Education Field.

4. Reporting

Summarized all business insights and data-driven recommendations.

Added Power BI visuals and SQL outputs into a clean professional report.

Prepared a presentation deck for stakeholder communication.

🛠️ How to Use This Project

Clone the Repository

git clone https://github.com/pavan-analytics/hr-insights-pro-SQL-Python-PowerBI.git
cd hr-insights-pro-SQL-Python-PowerBI


Open the Jupyter Notebook

Launch HR_Attrition_Analytics.ipynb

Run all preprocessing, feature engineering, and database connection steps

Run SQL Queries

Open hr_insights_queries.sql

Execute in PostgreSQL to reproduce insights

Open Power BI Dashboard

File: HR_Insights_Pro_Dashboard.pbix

Explore visual insights interactively

View the Final Report

File: HR_Insights_Pro_Final_Professional_Report.pdf
Read the summarized findings, visuals, and HR recommendations


| Tool / Language                        | Purpose                                        |
| -------------------------------------- | ---------------------------------------------- |
| **Python (Pandas, NumPy, SQLAlchemy)** | Data cleaning, transformation, and integration |
| **SQL (PostgreSQL)**                   | Business analysis and querying                 |
| **Power BI**                           | Dashboard creation and data visualization      |
| **Excel**                              | Data validation and quick summaries            |


📜 License
MIT License — Feel free to fork, star ⭐, and include this project in your data analytics portfolio.
