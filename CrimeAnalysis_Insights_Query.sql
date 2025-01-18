CREATE DATABASE ChicagoCrimeAnalyzer; 
USE ChicagoCrimeAnalyzer;

DROP TABLE CRIME_DATA;

SELECT COUNT(ID) FROM CRIME_DATA ;

-- 1) Top 20 Locations with highest crime count

SELECT Year,TimeOfDay,District,Community_Area, Latitude , Longitude , count(*) as CrimeCount
FROM crime_data
GROUP BY Year,TimeOfDay,District,Community_Area,Latitude,Longitude
ORDER BY CrimeCount DESC;


-- 2) High Risk Location Description

SELECT Year,TimeOfDay,District,Community_Area, Location_Description, count(*) as CrimeCount
FROM crime_data
GROUP BY Year,TimeOfDay,District,Community_Area, Location_Description
ORDER BY CrimeCount DESC;


-- 3) Arrests Over Time

SELECT Year,Month,TimeOfDay,District,Community_Area, count(*) AS CrimeCount , SUM( CASE WHEN Arrest =True THEN 1 ELSE 0 END ) AS Arrests
FROM crime_data
GROUP BY Year, Month,TimeOfDay,District,Community_Area
ORDER BY Year, Month ;


-- 4) District-Level CrimeCount Comparison

SELECT Year ,TimeOfDay,District,Community_Area,  count(*) AS CrimeCount
FROM crime_data
GROUP BY Year,TimeOfDay,District,Community_Area
ORDER BY District ASC;

-- 5) Monthly Crime Patterns

SELECT Year,Month ,TimeOfDay,District,Community_Area, count(*) AS CrimeCount
FROM crime_data
GROUP BY Year,Month ,TimeOfDay,District,Community_Area
ORDER BY Year,Month ASC ;

-- 6) Domestic vs Non-Domestic CrimeCount

SELECT Year,TimeOfDay,District,Community_Area, ( CASE WHEN Domestic = True Then 'Domestic' ELSE 'NON-Domestic' END ) AS Incident_Type ,count(Domestic) As CrimeCount
FROM crime_data
GROUP BY Year,TimeOfDay,District,Community_Area, Domestic ;

-- 7) Number of Crimes By Primary Type

SELECT Year ,TimeOfDay,District,Community_Area,Primary_Type , count(*) As CrimeCount , SUM(CASE WHEN Arrest = True THEN 1 ELSE 0 END) AS Arrests
FROM crime_data
GROUP BY Year ,TimeOfDay,District,Community_Area, Primary_Type
ORDER BY CrimeCount DESC;

-- 8) Arrest Rates By Crime Type

SELECT Year,TimeOfDay,District,Community_Area, Primary_Type, COUNT(*) AS CrimeCount, 
       SUM(CASE WHEN Arrest = True THEN 1 ELSE 0 END) AS Arrests,
       (SUM(CASE WHEN Arrest = True THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS Arrest_Rate
FROM crime_data
GROUP BY Year,TimeOfDay,District,Community_Area, Primary_Type
ORDER BY Arrest_Rate DESC;

-- 9) Severity CrimeCount Trends Over Year

SELECT Year,Month,TimeOfDay,District,Community_Area, Severity, COUNT(*) AS CrimeCount
FROM crime_data
GROUP BY Year, Month,TimeOfDay,District,Community_Area, Severity
ORDER BY Year,Month ASC;

-- 10) Quaterly Trends

SELECT Year, Quarter,TimeOfDay,District,Community_Area, COUNT(*) AS Crime_Count
FROM crime_data
GROUP BY Year, Quarter,TimeOfDay,District,Community_Area
ORDER BY Year, Quarter;

-- 11) Crimes By Day

SELECT Year,TimeOfDay,District,Community_Area, DayOfWeek , count(*) AS Crime_Count
FROM crime_data
GROUP BY Year , Dayofweek,TimeOfDay,District,Community_Area
ORDER BY Year ASC;



