CREATE DATABASE SQLClauses_Scenario;

use SQLCLAUSES_SCENARIO;

SELECT * FROM employee;

    -- TASK 1
	-- The HR department wants to identify departments where the average employee salary is 
	-- greater than the company's salary benchmark. 
	-- Display the Department and its Average Salary. 
	-- Sort the result by Average Salary in descending order and display only the top 3 departments.

	CREATE TABLE EMPLOYEE(
	EMP_ID INT,
	EMP_NAME VARCHAR(100),
	DEPARTMENT VARCHAR(50),
	SALARY DECIMAL(10,2),
	EXPERIENCE INT);

	INSERT INTO employee(EMP_ID, EMP_NAME, DEPARTMENT,SALARY,EXPERIENCE)
	values(101,'KARTHIGA','SALES',45000.98,5),
	(102,'SESAHYA','HR',55000.99,3),
	(103,'RAJESH','IT',60000.55,7),
	(104,'CHANDRU','HR',50000.56,8),
	(105,'JEYAPRIYA','FINANCE',40000.77,4),
	(106,'SHALVIN','SALES',65000.45,9),
	(108,'ROMAN','SALES',45000.66,2),
	(109,'JOHN','HR',55000.22,1),
	(110,'ROCK','IT',60000.78,10),
	(111,'UNDER','HR',50000.09,7),
	(112,'GILLI','FINANCE',40000.00,8),
	(113,'ARASAN','SALES',65000.90,2),
	(114,'ATMAN','FINANCE',40000.44,4),
	(115,'SIMBU','SALES',65000.33,2);

SELECT DEPARTMENT,
AVG(SALARY) AS AVERAGE_SALARY
FROM employee
GROUP BY DEPARTMENT
HAVING AVG(SALARY) > 60000
ORDER BY AVERAGE_SALARY DESC
LIMIT 3;

-- TASK 2
-- An e-commerce company wants to identify the top-selling products. 
-- Display each Product Category along with the total quantity sold. 
-- Only display categories that have sold more than the company's minimum sales requirement 100 units. 
-- Sort the result from highest to lowest quantity sold and display only the top 5 categories.

CREATE TABLE Sales(
	SALE_ID INT,
	PRODUCT_NAME VARCHAR(100),
	CATEGORY VARCHAR(50),
	QUANTITY INT,
	SALE_DATE DATE);

	INSERT INTO Sales(SALE_ID, PRODUCT_NAME, CATEGORY,QUANTITY,SALE_DATE)
	values(1,'Laptop','Electronics',50,'2025-01-01'),
(2,'Mobile','Electronics',40,'2025-01-02'),
(3,'Headphones','Electronics',30,'2025-01-03'),
(4,'TV','Electronics',20,'2025-01-04'),
(5,'Refrigerator','Appliances',35,'2025-01-05'),
(6,'Washing Machine','Appliances',40,'2025-01-06'),
(7,'Microwave','Appliances',45,'2025-01-07'),
(8,'Sofa','Furniture',60,'2025-01-08'),
(9,'Table','Furniture',30,'2025-01-09'),
(10,'Chair','Furniture',25,'2025-01-10'),
(11,'Notebook','Stationery',40,'2025-01-11'),
(12,'Pen','Stationery',35,'2025-01-12'),
(13,'Pencil','Stationery',30,'2025-01-13'),
(14,'Rice','Groceries',50,'2025-01-14'),
(15,'Oil','Groceries',45,'2025-01-15'),
(16,'Sugar','Groceries',20,'2025-01-16'),
(17,'Shampoo','Personal Care',30,'2025-01-17'),
(18,'Soap','Personal Care',25,'2025-01-18'),
(19,'Toothpaste','Personal Care',20,'2025-01-19'),
(20,'Face Wash','Personal Care',15,'2025-01-20');

SELECT CATEGORY,
SUM(QUANTITY) AS TOTAL_QUANTITY_SOLD
FROM Sales
GROUP BY CATEGORY
HAVING SUM(QUANTITY) > 100
ORDER BY TOTAL_QUANTITY_SOLD DESC
LIMIT 5;

-- TASK 3
-- A retail company wants to prepare a customer purchase report. 
-- Display only customers whose purchase amount satisfies the company's Purchase_Amount ≥ ₹25,000. 
-- Remove duplicate city names in the report and display the customers in ascending alphabetical order.

CREATE TABLE Customer(
	CUSTOMER_ID INT,
	CUSTOMER_NAME VARCHAR(100),
	CITY VARCHAR(50),
	PURCHASE_AMOUNT DECIMAL(10,2));

	INSERT INTO Customer(CUSTOMER_ID,CUSTOMER_NAME,CITY,PURCHASE_AMOUNT)
	values
(1,'VIJAY CM','CHENNAI',25000.50),
(2,'AJITH AK','MADURAI',18000.75),
(3,'DHANUSH DK','COIMBATORE',32000.00),
(4,'CHIYAN VIKRAM','CHENNAI',27500.25),
(5,'SIMBU ANTMAN','SALEM',15000.80),
(6,'ADHARVA','MADURAI',22000.40),
(7,'VISHAL','TRICHY',35000.60),
(8,'C JOSEPH','COIMBATORE',28000.90),
(9,'THALAPYHY','CHENNAI',40000.00),
(10,'SURYA','SALEM',17000.50),
(11,'AARYA','TRICHY',29000.75),
(12,'YOGI BABU','MADURAI',26000.30),
(13,'SANTHANAM','CHENNAI',31000.20),
(14,'JAI','COIMBATORE',19500.45),
(15,'VJ SIDHU','KUMBAKONAM',33000.10);

SELECT DISTINCT CUSTOMER_NAME,CITY,PURCHASE_AMOUNT
FROM Customer
WHERE  Purchase_Amount >= 25000
ORDER BY CUSTOMER_NAME ASC;

-- A hospital wants to analyze the number of patients treated in each department. 
-- Display the Department Name and Total Patients. 
-- Show only those departments that have treated more than the hospital's required More than 3 patients. 
-- Sort the result based on the total number of patients in descending order.

CREATE TABLE Patient(
	PATIENT_ID INT,
	PATIENT_NAME VARCHAR(100),
	DEPARTMENT VARCHAR(50),
	TREATMENT_COST DECIMAL(10,2));

	INSERT INTO Patient(PATIENT_ID,PATIENT_NAME,DEPARTMENT,TREATMENT_COST)
	values
(1,'VIJAY CM','Cardiology','45000.50'),
(2,'AJITH AK','Neurology','60000.75'),
(3,'DHANUSH DK','Orthopedics','35000.00'),
(4,'CHIYAN VIKRAM','Cardiology','52000.25'),
(5,'SIMBU ANTMAN','Pediatrics','18000.80'),
(6,'ADHARVA','Neurology','65000.40'),
(7,'VISHAL','Orthopedics','42000.60'),
(8,'C JOSEPH','Cardiology','48000.90'),
(9,'THALAPYHY','Dermatology','22000.00'),
(10,'SURYA','Pediatrics','25000.50'),
(11,'AARYA','Neurology','70000.75'),
(12,'YOGI BABU','Cardiology','55000.30'),
(13,'SANTHANAM','Orthopedics','39000.20'),
(14,'JAI','Dermatology','21000.45'),
(15,'VJ SIDHU','Cardiology','47000.10'),
(16,'KHAN','Neurology','68000.805'),
(17,'SATHISH','Pediatrics','27000.60'),
(18,'KUSKA','Orthopedics','41000.40'),
(19,'PRADEEP','Dermatology','23000.30'),
(20,'CAM SOORI','Cardiology','50000.00');

SELECT DEPARTMENT,
COUNT(PATIENT_ID) AS TOTAL_PATIENTS
FROM Patient
GROUP BY DEPARTMENT	
HAVING COUNT(PATIENT_ID) > 3
ORDER BY TOTAL_PATIENTS DESC;

-- TASK 5
-- A company wants to prepare a report of employees who satisfy both the company's age criteria 
-- and salary criteria Age ≥ 30 and Salary ≥ ₹60,000. 
-- Display the employee details, arrange the report by Salary in descending order, and return only 
-- the top 5 employees.

CREATE TABLE EMPLOYEE2(
	EMP_ID INT,
	EMP_NAME VARCHAR(100),
	DEPARTMENT VARCHAR(50),
	SALARY DECIMAL(10,2),
	AGE INT);

	INSERT INTO EMPLOYEE2(EMP_ID, EMP_NAME, DEPARTMENT,SALARY,AGE)
	values(101,'KARTHIGA','SALES',45000.98,50),
	(102,'SESAHYA','HR',55000.99,30),
	(103,'RAJESH','IT',60000.55,27),
	(104,'CHANDRU','HR',50000.56,48),
	(105,'JEYAPRIYA','FINANCE',40000.77,14),
	(106,'SHALVIN','SALES',65000.45,99),
	(108,'ROMAN','SALES',45000.66,72),
	(109,'JOHN','HR',55000.22,10),
	(110,'ROCK','IT',60000.78,10),
	(111,'UNDER','HR',50000.09,78),
	(112,'GILLI','FINANCE',40000.00,8),
	(113,'ARASAN','SALES',65000.90,29),
	(114,'ATMAN','FINANCE',40000.44,44),
	(115,'SIMBU','SALES',65000.33,42);
    
    SELECT EMP_ID, EMP_NAME, DEPARTMENT,SALARY,AGE
    FROM EMPLOYEE2
    WHERE Age >= 30 and Salary >= 60000
    ORDER BY SALARY DESC
    LIMIT 5;
    


