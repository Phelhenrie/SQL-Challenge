--Q1)Query all columns for all American cities in the CITY table with populations larger 
--than 100000. The CountryCode for America is USA.
SELECT * 
FROM CITY
WHERE COUNTRYCODE = 'USA' AND POPULATION> 100000;

--Q2)Query the NAME field for all American cities in the CITY table with populations larger 
--than 120000. The CountryCode for America is USA.
SELECT NAME
FROM CITY
WHERE COUNTRYCODE= 'USA' AND POPULATION > 120000;

--Q3)Query all columns (attributes) for every row in the CITY table.
SELECT *
FROM CITY;

--Q4)Query all columns for a city in CITY with the ID 1661.
SELECT *
FROM CITY
WHERE ID= 1661;
--Q5) Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE 
--for Japan is JPN.
SELECT *
FROM CITY 
WHERE COUNTRYCODE = 'JPN';
--Q6)Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT NAME 
FROM CITY
WHERE COUNTRYCODE= 'JPN';

--Q7)Query a list of CITY and STATE from the STATION table.
SELECT CITY,STATE
FROM STATION;
--Q8)Query a list of CITY names from STATION for cities that have an even ID number. 
--Print the results in any order, but exclude duplicates from the answer. 
SELECT DISTINCT CITY
FROM STATION
WHERE ID%2 = 0;
--Q9)Find the difference between the total number of CITY entries in the table and the 
--number of distinct CITY entries in the table.
 SELECT COUNT(CITY)  -
 COUNT(DISTINCT CITY )
 FROM STATION;
 
 --Q10)Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION.
 --Your result cannot contain duplicates.
 SELECT DISTINCT CITY 
FROM STATION
WHERE RIGHT(CITY,1) IN ('a','e','i','o','u');

--Q11)Query the two cities in STATION with the shortest and longest CITY names, as well as 
--their respective lengths (i.e.: number of characters in the name). If there is more than 
--one smallest or largest city, choose the one that comes first when ordered alphabetically.
SELECT CITY, LENGTH(CITY) 
FROM STATION
ORDER BY LENGTH(CITY),CITY LIMIT 1;

SELECT CITY, LENGTH(CITY) 
FROM STATION
ORDER BY LENGTH(CITY) DESC,CITY LIMIT 1;
 
 --Q12)Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. 
 --Your result cannot contain duplicates.
 SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY LIKE 'A%'OR CITY LIKE 'E%' OR CITY LIKE 'I%'OR CITY LIKE 'O%'OR CITY LIKE'U%';

--Q13)Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as
--both their first and last characters. Your result cannot contain duplicates. 
SELECT DISTINCT CITY 
FROM STATION
WHERE LEFT(CITY,1) IN ('A','E','I','O','U') AND RIGHT(CITY,1) IN ('a','e','i','o','u');

--Q14) Query the list of CITY names from STATION that do not start with vowels. 
--Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE NOT (CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%');
--Q15)Query the list of CITY names from STATION that do not end with vowels. Your result
--cannot contain duplicates
SELECT DISTINCT CITY
FROM STATION
WHERE NOT (CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u');
--Q16) Query the list of CITY names from STATION that either do not start with vowels or do not
--end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE NOT (CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%') OR NOT (CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u');
--Q17)Query the list of CITY names from STATION that do not start with vowels and do not end
--with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE NOT (CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%')
AND NOT (CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u');

--Q18) Query the Name of any student in STUDENTS who scored higher than  Marks. Order your 
--output by the last three characters of each name. If two or more students both have names 
--ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by
--ascending ID.
SELECT NAME 
FROM STUDENTS
WHERE MARKS > 75
ORDER BY SUBSTR(NAME,-3,3), ID ;
--Q19) Write a query that prints a list of employee names (i.e.: the name attribute) from the 
--Employee table in alphabetical order.
SELECT name 
FROM Employee 
ORDER BY name ;
--Q20) Write a query that prints a list of employee names (i.e.: the name attribute) for 
--employees in Employee having a salary greater than  per month who have been employees for
--less than  months. Sort your result by ascending employee_id.
SELECT NAME
FROM EMPLOYEE
WHERE (SALARY >2000 )AND (MONTHS <10)
ORDER BY EMPLOYEE_ID;
--Q21)Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION
--that is less than . Round your answer to  decimal places
 SELECT ROUND(LONG_W,4)
FROM STATION
WHERE LAT_N =(SELECT MAX(LAT_N)
                    FROM STATION
                    WHERE LAT_N <137.2345);

