CREATE DATABASE TASKS;
USE TASKS;
SELECT * FROM COGNIFYZ;

#Determine the top three most common cuisines in the dataset.
SELECT 
    Cuisines, 
    COUNT(*) AS count
FROM 
    cognifyz
GROUP BY 
    Cuisines
ORDER BY 
    count DESC
LIMIT 3;

#Calculate the percentage of restaurants that serve each of the top cuisines.
SELECT 
    Cuisines,
    COUNT(DISTINCT `Restaurant Name`) AS restaurants_serving,
    ROUND(COUNT(DISTINCT `Restaurant Name`) * 100.0 / (SELECT COUNT(DISTINCT `Restaurant Name`) FROM cognifyz), 2) AS percentage
FROM cognifyz
GROUP BY Cuisines
ORDER BY restaurants_serving DESC
LIMIT 3;
   




