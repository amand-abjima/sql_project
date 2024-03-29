-- AGGREGATE FUNCTIONS

CREATE TABLE PRODUCT(PRODUCT_ID INT PRIMARY KEY,PRODUCT_NAME VARCHAR(20),COMPANY VARCHAR(20),QUANTITY INT,PRICE FLOAT);

INSERT INTO PRODUCT VALUES(108,'ITEM 8','C8',5,212.43);

SELECT * FROM PRODUCT;


-- COUNT()

SELECT COUNT(*) FROM  PRODUCT;

SELECT COUNT(*) FROM  PRODUCT WHERE QUANTITY=2;

SELECT COUNT(DISTINCT COMPANY) FROM PRODUCT;

SELECT COMPANY,COUNT(*) FROM PRODUCT GROUP BY COMPANY; 

SELECT COMPANY,QUANTITY,COUNT(*) FROM PRODUCT GROUP BY COMPANY,QUANTITY HAVING COUNT(*)>1;

-- MAX()

SELECT MAX(PRICE) FROM PRODUCT;

SELECT MAX(QUANTITY) FROM PRODUCT;

-- MIN()


SELECT MIN(PRICE) FROM PRODUCT;

SELECT MIN(QUANTITY) FROM PRODUCT;

--SUM()

SELECT SUM(PRICE) FROM PRODUCT;

SELECT COMPANY,SUM(PRICE) FROM PRODUCT GROUP BY COMPANY;

SELECT SUM(PRICE) FROM PRODUCT WHERE COMPANY='C1';

SELECT COMPANY,SUM(PRICE) FROM PRODUCT GROUP BY COMPANY HAVING SUM(PRICE)>=600;

--AVG()

SELECT AVG(PRICE) FROM PRODUCT;

SELECT ROUND(AVG(PRICE),1) FROM PRODUCT WHERE COMPANY='C1';

--STDDEV()

SELECT STDEV(PRICE) FROM PRODUCT;

--VARIANCE()

SELECT VAR(PRICE) FROM PRODUCT;


--STRING FUNCTIONS

CREATE TABLE PERSON1(ID INT,FIRST_NAME VARCHAR(20),LAST_NAME VARCHAR(20));

INSERT INTO PERSON1 VALUES(7,'manish','tyagi');

SELECT * FROM PERSON1;

--UPPER()

SELECT UPPER(FIRST_NAME),UPPER(LAST_NAME) FROM PERSON1;

--LOWER()


SELECT LOWER(FIRST_NAME),LOWER(LAST_NAME) FROM PERSON1;

--LEN()


SELECT LEN('GAURAV') AS NAME;

--CONCAT()

SELECT CONCAT('AMAN',' ','DHAKRE') AS NAME;


--LTRIM()

SELECT LTRIM('GAURAV','G') AS NAME;

--RTRIM()

SELECT RTRIM('GAURAV','V') AS NAME;

--TRIM()

--LTRIM()

SELECT TRIM('G' FROM 'GARG') AS NAME;

--TRANSLATE()


SELECT TRANSLATE('AKASH','KS','23') AS NAME;

--REPLACE()

SELECT REPLACE('AKASH','AKA','239') AS NAME;

--ASCII()

SELECT ASCII(FIRST_NAME) AS NAME FROM PERSON1;

--CHAR()

SELECT CHAR(65) AS NAME;

--CHARINDEX()

SELECT CHARINDEX('K','AKASH') AS NAME;

--LEFT()

SELECT LEFT('AKASH',2) AS NAME;

--RIGHT()

SELECT RIGHT('AKASH',2) AS NAME;

--REVERSE()

SELECT REVERSE('AMAN PRATP SINGH DHAKRE') AS NAME;

--STR()

SELECT STR(657);

--SUBSTRING()

SELECT SUBSTRING('AMAN PRATP SINGH DHAKRE',1,12) AS NAME;

--UNICODE()

SELECT UNICODE('AMAN') AS NAME;

--NCHAR()

SELECT NCHAR(78) AS NAME;

--DATE AND TIME FUNCTIONS

--CURRENT_TIMESTAMP

SELECT CURRENT_TIMESTAMP AS DATE;

--DATEADD()

SELECT DATEADD(YEAR,11,'2020/07/08') AS DATE;

--DATEDIFF()

SELECT DATEDIFF(YEAR,'2024/07/08','2020/07/08') AS DATE;

--DATEFROMPARTS()

SELECT DATEFROMPARTS(2023,11,3) AS DATE;

--DATENAME()

SELECT DATENAME(YEAR,'2020/07/08') AS DATE;

----DATEPART()

SELECT DATEPART(YEAR,'2020/07/08') AS DATE;

--DAY(

SELECT DAY('2020/07/08') AS DATE;

--GETDATE()

SELECT GETDATE() AS DATE;

--GETUTCDATE()

SELECT GETUTCDATE() AS DATE;

--ISDATE()

SELECT ISDATE('2020/07/08') AS DATE;

--MONTH()

SELECT MONTH('2020/07/08') AS DATE;

--SYSDATETIME()

SELECT SYSDATETIME() AS DATE;

--YEAR()

SELECT YEAR('2020/07/08') AS DATE;

--CAST()

SELECT CAST(22.34 AS INT);

SELECT CAST(22.34 AS VARCHAR);

SELECT CAST('2023/12/16' AS DATETIME);

--CONVERT()

SELECT CONVERT(INT,66.897);

SELECT CONVERT(VARCHAR,66.897);

SELECT CONVERT(DATETIME,'2020/09/21');















