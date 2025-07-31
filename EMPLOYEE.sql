CREATE DATABASE emp;
use emp;
CREATE TABLE EMP(
emp_id INT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
dep VARCHAR(30)NOT NULL,
exp VARCHAR(20)NOT NULL);
SELECT * FROM EMP;
INSERT INTO EMP(emp_id,name,dep,exp) VALUES(101,'sana','sales',3);
INSERT INTO EMP(emp_id,name,dep,exp) VALUES(120,'ram','tester',3);
INSERT INTO EMP(emp_id,name,dep,exp) VALUES(130,'somu','sales',3);
INSERT INTO EMP(emp_id,name,dep,exp) VALUES(140,'nilla','tester',3); 
INSERT INTO EMP(emp_id,name,dep,exp) VALUES(150,'pallavi','tester',3);
UPDATE EMP SET salary ='2000' WHERE  emp_id=120;
UPDATE EMP SET salary ='2000' WHERE  emp_id=130;
UPDATE EMP SET salary ='2000' WHERE  emp_id=140;
UPDATE EMP SET salary ='2000' WHERE  emp_id=150;
ALTER TABLE EMP
ADD salary INT;









