create database Samples
use Samples
CREATE TABLE Study(
reg_no INT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
department VARCHAR(40) NOT NULL,
year INT NOT NULL);
INSERT INTO Study(reg_no,name,department,year) VALUES
(111,'XXX','Computer Science',4),
(125,'yyy','CSE',3),
(126,'ZZZ','Information Technology',3),
(130,'abc','Cyber Security',1); 
SELECT * FROM Study;
UPDATE  Study
SET name='sdf',
department='BCA',
year=3 WHERE reg_no =127;

INSERT INTO Study(reg_no,name,department,year)
VALUES (150,'sdfg','MSC CS',2);
SELECT * FROM Study;

ALTER TABLE Study
ADD phone_num VARCHAR(80);
UPDATE Study 
SET phone_num = '123465788' WHERE reg_no = 126;

UPDATE Study 
SET phone_num = '12348787' WHERE reg_no = 111;

UPDATE Study 
SET 
    phone_num = '12379878787'
WHERE
    reg_no = 125;

UPDATE Study 
SET phone_num = '1237678787' WHERE reg_no = 130;

UPDATE Study 
SET phone_num = '1234898987' WHERE reg_no = 150;


SELECT COUNT(*) AS tot_student FROM Stud;
SELECT MAX(year) AS max_yr FROM stud;
SELECT MIN(year) AS min_yr FROM stud;
SELECT AVG(year) AS av_yr FROM stud;
SELECT department,COUNT(*) AS dept_COUNT FROM stud GROUP BY department;

SELECT department,MAX(year) AS max_yr FROM stud
GROUP BY department;

SELECT * FROM stud
ORDER BY year ASC;

SELECT * FROM stud
ORDER BY name;

SELECT * FROM stud
ORDER BY department DESC;

SELECT UPPER(department) AS dep_upr FROM stud;
SELECT UPPER(name) AS name_up FROM stud;
SELECT LOWER(name) AS name_up FROM stud;
SELECT LEFT(name,2) AS srt FROM stud;
SELECT name,LENGTH(name) AS name_ln FROM stud;
SELECT CONCAT(name,'-',department) AS combine FROM stud;

SELECT name,year,year+ 1 AS nx_yr  FROM stud;
SELECT reg_no,MOD(reg_no,2) AS odr FROM stud;

ALTER TABLE stud
ADD Date_Detail DATE;

SELECT * FROM stud;

UPDATE Stud SET Date_Detail='2021-08-18' WHERE reg_no=111;
UPDATE Stud SET Date_Detail='2022-05-03' WHERE reg_no=122;
UPDATE Stud SET Date_Detail='2023-06-13' WHERE reg_no=124;
UPDATE Stud SET Date_Detail='2024-09-22' WHERE reg_no=130;
UPDATE Stud SET Date_Detail='2025-04-01' WHERE reg_no=145;
UPDATE Stud SET Date_Detail='2025-03-09' WHERE reg_no=155;
UPDATE Stud SET Date_Detail='2025-01-01' WHERE reg_no=166;

SELECT CURDATE();
SELECT CURTIME();

SELECT reg_no,name,YEAR(Date_detail) AS yr FROM stud;

