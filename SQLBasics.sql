## 1. Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.


SELECT DISTINCT CITY
FROM STATION
WHERE 
    NOT (CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%')
    OR 
    NOT (CITY LIKE '%A' OR CITY LIKE '%E' OR CITY LIKE '%I' OR CITY LIKE '%O' OR CITY LIKE '%U');

Or

SELECT DISTINCT CITY
FROM STATION
WHERE 
    SUBSTR(CITY, 1, 1) NOT IN ('A', 'E', 'I', 'O', 'U')
    OR 
    SUBSTR(CITY, -1, 1) NOT IN ('A', 'E', 'I', 'O', 'U');

or

SELECT DISTINCT CITY
FROM STATION
WHERE 
    LEFT(CITY, 1) NOT IN ('A', 'E', 'I', 'O', 'U')
    OR 
    RIGHT(CITY, 1) NOT IN ('A', 'E', 'I', 'O', 'U');

