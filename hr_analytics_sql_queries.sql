Q1: What is the overall employee attrition rate in the company?
SELECT 
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(100.0 * SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_rate
FROM employee_attrition;

Q2: Which departments have the highest attrition rates?
SELECT 
    department,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(100.0 * SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_rate
FROM employee_attrition
GROUP BY department
ORDER BY attrition_rate DESC;

Q3: How does monthly income vary across different job roles?
SELECT 
    jobrole,
    ROUND(AVG(monthlyincome), 2) AS avg_income
FROM employee_attrition
GROUP BY jobrole
ORDER BY avg_income DESC;

Q4: Does working overtime increase the likelihood of attrition?
SELECT 
    overtime,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(100.0 * SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_rate
FROM employee_attrition
GROUP BY overtime
ORDER BY attrition_rate DESC;

Q5: Does the distance from home affect attrition?
SELECT 
    CASE 
        WHEN distancefromhome BETWEEN 0 AND 5 THEN '0-5 km'
        WHEN distancefromhome BETWEEN 6 AND 10 THEN '6-10 km'
        WHEN distancefromhome BETWEEN 11 AND 20 THEN '11-20 km'
        ELSE '20+ km' 
    END AS distance_range,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(100.0 * SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_rate
FROM employee_attrition
GROUP BY distance_range
ORDER BY attrition_rate DESC;

Q6: Which education fields have the highest turnover rates?
SELECT 
    educationfield,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(100.0 * SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_rate
FROM employee_attrition
GROUP BY educationfield
ORDER BY attrition_rate DESC;

Q7: How does job satisfaction level impact employee attrition?
SELECT 
    jobsatisfaction,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(100.0 * SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_rate
FROM employee_attrition
GROUP BY jobsatisfaction
ORDER BY jobsatisfaction;

Q8: Which experience levels are most prone to attrition?
SELECT 
    experiencelevel,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(100.0 * SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_rate
FROM employee_attrition
GROUP BY experiencelevel
ORDER BY attrition_rate DESC;

Q9: Does the percentage of salary hike influence attrition?
SELECT 
    percentsalaryhike,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(100.0 * SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_rate
FROM employee_attrition
GROUP BY percentsalaryhike
ORDER BY percentsalaryhike DESC;

Q10: How does performance rating vary across different age groups?
SELECT 
    agegroup,
    ROUND(AVG(performancerating), 2) AS avg_performance,
    ROUND(AVG(jobsatisfaction), 2) AS avg_satisfaction,
    COUNT(*) AS total_employees
FROM employee_attrition
GROUP BY agegroup
ORDER BY avg_performance DESC;
