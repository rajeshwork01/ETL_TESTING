Create database etl_testing5;

use etl_testing5;
 
CREATE TABLE Employee(
EmpID INT,
EmpName VARCHAR(50),
Department VARCHAR(30),
Salary INT);

INSERT INTO Employee (EmpID, EmpName, Department, Salary)
VALUES
(101,'John','Sales',45000),
(102,'Alice','HR',55000),
(103,'David','Finance',60000),
(104,'Ravi','IT',50000),
(105,'Meena','Sales',40000);

SELECT * FROM EMPLOYEE;

use etl_testing5;
 
CREATE TABLE Student(
Std_ID INT,
STD_Name VARCHAR(50),
Course VARCHAR(30));

INSERT INTO Student (Std_ID,STD_Name, Course)
VALUES
(1,'Rahul','SQL'),
(2,'Priya','Python'),
(3,'Arun','Power BI'),
(4, 'Sneha', 'Java'),
(5, 'Karthik','SQL');

ALTER TABLE Student
ADD Email VARCHAR(50);

SELECT * FROM Student;


use etl_testing5;
 
CREATE TABLE Product(
Product_ID  INT,
Product_Name VARCHAR(50),
Price INT(30));

INSERT INTO Product (Product_ID,Product_Name, Price)
VALUES
(101,'Laptop',60000),
(102,'Mouse',800),
(103,'Keyboard',1200 ),
(104, 'Monitor', 15000),
(105, 'Printer',9000);

SET SQL_SAFE_UPDATES = 0;

UPDATE Product
SET Price = 1500
WHERE Product_ID = 103;

use etl_testing5;
 
CREATE TABLE Patient(
Patient_ID  INT,
Patient_Name VARCHAR(50),
Disease VARCHAR(30));

INSERT INTO Patient(Patient_ID,Patient_Name, Disease)
VALUES
(1,'Ramesh','Fever'),
(2,'Suresh','Cold'),
(3,'Anitha','Diabetes' ),	
(4, 'Meena', 'Asthma'),
(5, 'Kumar','Typhoid');

DELETE FROM Patient 
WHERE Patient_ID = 2; 

use etl_testing5;
 
CREATE TABLE Eventregistration(
Student_ID  INT,
Student_Name VARCHAR(50),
Event_Name VARCHAR(50));

INSERT INTO Eventregistration(Student_ID,Student_Name, Event_Name)
VALUES
(1,'Rahul','Dance'),
(2,'Priya','Singing	'),
(3,'Arun','Drawing' ),	
(4, 'Sneha', 'Quiz'),
(5, 'Karthik','Drama');

TRUNCATE TABLE Eventregistration;

CREATE TABLE Employee(
EmpID INT,
EmpName VARCHAR(50),
Department VARCHAR(30),
Salary INT);

INSERT INTO Employee (EmpID, EmpName, Department, Salary)
VALUES
(101,'John','Sales',45000),
(102,'Alice','HR',55000),
(103,'David','Finance',60000),
(104,'Ravi','IT',50000),
(105,'Meena','Sales',40000);

RENAME TABLE Employee TO Staff;

use etl_testing5;

CREATE TABLE Account(
Account_No INT,
Customer_Name VARCHAR(50),
Balance INT);

INSERT INTO Account (Account_No,Customer_Name, Balance)
VALUES
(1001,'John',50000),
(1002,'Mary',30000),
(1003,'David',70000),
(1004,'Sam',45000),
(1005,'Priya',60000);

UPDATE Account
SET Balance = 35000
WHERE Account_No = 1002;

use etl_testing5;

CREATE TABLE Book(
Book_ID INT,
Book_Name VARCHAR(50),
Author VARCHAR(50));

INSERT INTO Book (Book_ID,Book_Name,Author)
VALUES
(1,'SQL Basics','James'),
(2,'Python Guide','Robert'),
(3,'Java Programming','John'),
(4,'Power BI ','David'),
(5,'Data Science ','Peter');

DELETE FROM Book 
WHERE Book_ID = 3; 

ROLLBACK;

GRANT SELECT
ON employee
TO Student1;

DROP TABLE Employee; 











