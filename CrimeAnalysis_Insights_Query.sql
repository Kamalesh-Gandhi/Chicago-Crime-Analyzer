CREATE DATABASE ChicagoCrimeAnalyzer; 
USE ChicagoCrimeAnalyzer;

DROP TABLE CRIME_DATA;

SELECT COUNT(ID) FROM CRIME_DATA ;

-- 1) Locations with highest crime count

SELECT  Latitude , Longitude , count(*) as CrimeCount
FROM crime_data
GROUP BY Latitude,Longitude
ORDER BY CrimeCount DESC;


-- 2) High Risk Location Description

SELECT  Location_Description, count(*) as CrimeCount
FROM crime_data
GROUP BY  Location_Description
ORDER BY CrimeCount DESC;


-- 3) Arrests Over Time

SELECT Year, count(*) AS CrimeCount , SUM( CASE WHEN Arrest =True THEN 1 ELSE 0 END ) AS Arrests
FROM crime_data
GROUP BY Year
ORDER BY Year ;


-- 4) District-Level CrimeCount Comparison

SELECT District, count(*) AS CrimeCount
FROM crime_data
GROUP BY District
ORDER BY District ASC;

-- 5) Monthly Crime Patterns

SELECT Month , count(*) AS CrimeCount
FROM crime_data
GROUP BY Month 
ORDER BY Month ASC ;

-- 6) Domestic vs Non-Domestic CrimeCount

SELECT ( CASE WHEN Domestic = True Then 'Domestic' ELSE 'NON-Domestic' END ) AS Incident_Type ,count(Domestic) As CrimeCount
FROM crime_data
GROUP BY Domestic ;

-- 7) Number of Crimes By Primary Type

SELECT Primary_Type , count(*) As CrimeCount , SUM(CASE WHEN Arrest = True THEN 1 ELSE 0 END) AS Arrests
FROM crime_data
GROUP BY Primary_Type
ORDER BY CrimeCount DESC;

-- 8) Arrest Rates By Crime Type

SELECT  Primary_Type, COUNT(*) AS CrimeCount, 
       SUM(CASE WHEN Arrest = True THEN 1 ELSE 0 END) AS Arrests,
       (SUM(CASE WHEN Arrest = True THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS Arrest_Rate
FROM crime_data
GROUP BY  Primary_Type
ORDER BY Arrest_Rate DESC;

-- 9) Severity CrimeCount Trends Over Year

SELECT Year, Severity, COUNT(*) AS CrimeCount
FROM crime_data
GROUP BY Year, Severity
ORDER BY Year ASC;

-- 10) Quaterly Trends

SELECT Year, Quarter, COUNT(*) AS Crime_Count
FROM crime_data
GROUP BY Year, Quarter
ORDER BY Year, Quarter;

-- 11) Crimes By Day

SELECT Year, DayOfWeek , count(*) AS Crime_Count
FROM crime_data
GROUP BY Year , Dayofweek
ORDER BY Year ASC;



