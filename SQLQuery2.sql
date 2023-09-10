
USE ETRADE2

--AGGREGATE FUNCTIONS--

SELECT * FROM SALES

SELECT COUNT(*) FROM SALES

SELECT MIN(AMOUNT), MAX(AMOUNT) FROM SALES

SELECT SUM(AMOUNT) FROM SALES

SELECT COUNT(FICHENO) FROM SALES

SELECT AVG(AMOUNT) FROM SALES

SELECT * FROM SALES ORDER BY TOTALPRICE

SELECT MIN(TOTALPRICE),  MAX(TOTALPRICE), COUNT(FICHENO),
SUM(TOTALPRICE) FROM SALES

SELECT MIN(TOTALPRICE),	MAX(TOTALPRICE), COUNT(FICHENO), SUM(TOTALPRICE), AVG(TOTALPRICE)
FROM SALES WHERE CITY='ADANA'


SELECT CITY, SUM(TOTALPRICE) FROM SALES GROUP BY CITY

SELECT TOP 10
CITY,
MIN(TOTALPRICE) AS MINPRICE,
SUM(TOTALPRICE) TOTALPRICE
FROM SALES
GROUP BY CITY
ORDER BY SUM(TOTALPRICE) DESC


SELECT *,
CONVERT(DATE, DATE_) AS DATE2
FROM SALES WHERE CITY='ANKARA'
ORDER BY DATE_

SELECT CONVERT(DATE, DATE_) AS DATE2,
*,
CONVERT(DATE, DATE_) AS DATE2
FROM SALES WHERE CITY='ANKARA'
ORDER BY DATE_

--We change the design of SALES and add DATE2 to the table

UPDATE SALES SET DATE2=CONVERT(DATE, DATE_)

SELECT * FROM SALES

SELECT CITY, DATE2, SUM(TOTALPRICE) AS TOTALPRICE
FROM SALES WHERE CITY='ANKARA'
GROUP BY CITY, DATE2
ORDER BY CITY, DATE2


SELECT CITY, COUNT(DISTINCT CUSTOMERNAME) AS UNIQUECOSTUMER
FROM SALES
GROUP BY CITY
ORDER BY CITY

SELECT CITY, SUM(TOTALPRICE)
FROM SALES 
WHERE CITY IN ('ANKARA', '�STANBUL', 'ARDAHAN')
GROUP BY CITY
HAVING SUM(TOTALPRICE) > 40000
ORDER BY SUM(TOTALPRICE) DESC

