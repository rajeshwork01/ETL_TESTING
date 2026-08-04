-- Scenario 1 – Employee Salary Revision Report 
-- Scenario 
-- A company is planning to provide a fixed salary increment of ₹5,000 to every employee. The HR 
-- department wants to generate a report showing both the current salary and the revised salary after 
-- the increment.

CREATE DATABASE OPERATORS;
USE OPERATORS;

CREATE TABLE Employee (
Emp_ID INT PRIMARY KEY,
Emp_Name VARCHAR(100),
Department VARCHAR(50),
Salary DECIMAL(10,2),
Age INT);

INSERT INTO Employee (Emp_ID, Emp_Name, Department, Salary, Age) VALUES
(1, 'A', 'HR', 45000.00, 28),
(2, 'B', 'Finance', 60000.00, 32),
(3, 'C', 'IT', 75000.00, 26),
(4, 'D', 'Marketing', 52000.00, 29),
(15, 'E', 'Sales', 48000.00, 35),
(6, 'F', 'IT', 82000.00, 31),
(7, 'G', 'HR', 47000.00, 27),
(8, 'H', 'Finance', 68000.00, 30);

SELECT Emp_Name,Department,
SALARY AS CURRENT_SALARY,
SALARY + 5000 AS Revised_salary
FROM Employee;

-- Scenario 2 – Employee Eligibility Report 
-- Scenario 
-- The HR department wants to identify employees who belong to the Sales department and 
-- whose salary is greater than ₹45,000. 
-- Generate a report containing only employees who satisfy both conditions.

SELECT Department,SALARY FROM Employee 
WHERE Department = 'SALES' 
AND SALARY > 45000;

-- Scenario 3 – Department-wise Employee Search 
-- Scenario 
-- The management wants to retrieve employees who are working in either the HR department or the IT department.

 SELECT Department,SALARY FROM EMPLOYEE
 WHERE DEPARTMENT = 'HR' OR DEPARTMENT = 'IT';
 
-- Scenario 4 – Employee Name Pattern Search 
-- Scenario 
-- The recruitment team wants to identify employees whose names start with the letter 'A' and 
-- employees whose names end with the letter 'n'.

SELECT * FROM EMPLOYEE
WHERE Emp_Name LIKE 'A%';

SELECT * FROM EMPLOYEE
WHERE Emp_Name LIKE '%N';

-- Scenario 5 – Employee Data Validation Report 
-- Scenario 
-- A company has migrated employee records from another system. During migration, some 
-- employees were assigned a department, while others were left without one. 
-- Generate the following reports: 
-- • Employees whose department information is missing. 
-- • Employees whose department information is available.

CREATE TABLE Employee1 (
Emp_ID INT,
Emp_Name VARCHAR(100),
Department VARCHAR(50),
Salary DECIMAL(10,2),
Age INT);

INSERT INTO Employee1 (Emp_ID, Emp_Name, Department, Salary, Age) VALUES
(1, 'A', 'HR', 45000.00, 28),
(2, 'B', 'Finance', 60000.00, 32),
(3, 'C', 'IT', 75000.00, 26),
(4, 'D', 'Marketing', 52000.00, 29),
(5, 'E', 'Sales', 48000.00, 35),
(6, 'F', 'IT', 82000.00, 31),
(7, 'G', 'HR', 47000.00, 27),
(8, 'H', null, 68000.00, 30),
(9, 'G', null, 47000.00, 27),
(10, 'H', null, 68000.00, 30);

SELECT Emp_ID, Emp_Name,DEPARTMENT FROM EMPLOYEE1
WHERE DEPARTMENT IS NULL;

SELECT * FROM EMPLOYEE1
WHERE DEPARTMENT IS NOT NULL;





