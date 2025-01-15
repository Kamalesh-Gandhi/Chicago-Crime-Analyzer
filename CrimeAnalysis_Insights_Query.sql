CREATE DATABASE ChicagoCrimeAnalyzer; 
USE ChicagoCrimeAnalyzer;

DROP TABLE CRIME_DATA;

SELECT COUNT(ID) FROM CRIME_DATA ;

-- Top 20 Locations with highest crime count

SELECT Latitude , Longitude , count(*) as CrimeCount
FROM crime_data
GROUP BY Latitude,Longitude
ORDER BY CrimeCount DESC
LIMIT 20;

-- High Risk Location Description

SELECT Location_Description, count(*) as CrimeCount
FROM crime_data
GROUP BY Location_Description
ORDER BY CrimeCount DESC
LIMIT 10;

-- Arrests Over Time

SELECT Year,Month, SUM( CASE WHEN Arrest ='True'THEN 1 ELSE 0 END ) AS Arrests
FROM crime_data
GROUP BY Year, Month
ORDER BY Year, Month

