-- Scenario 1 – Employee Department Report  
-- Scenario 
-- The HR department wants to generate a report showing employee details along with their 
-- department names. 
-- Display the Employee ID, Employee Name, Department Name, and Salary for employees 
-- who are assigned to a valid department. 
-- Sort the report by Salary in descending order.

CREATE DATABASE SQL_JOINS;

USE SQL_JOINS;

CREATE TABLE Employee
(
Emp_ID INT,
Emp_Name VARCHAR(100),
Department_ID INT,
Salary DECIMAL(10,2));

INSERT INTO Employee (Emp_ID,Emp_Name,Department_ID,Salary) 
VALUES 
(1, 'ROHIT SHARMA', 101, 45000.67),
(2, 'VIRAT KOHLI', 102, 52000.45),
(3, 'KL RAHUL', 103, 68000.67),
(4, 'SHUBMAN GILL', 104, 47000.34),
(5, 'YASHASVI JAISWAL', 105, 55000.88),
(6, 'SHREYAS IYER', 106, 60000.90),
(7, 'MS DHONI', 103, 72000.99),
(8, 'RISHABH PANT', 102, 50000.10),
(9, 'HARDIK PANDYA', 105, 58000.05),
(10, 'RAVINDRA JADEJA', 101, 46000.11),
(11, 'AXAR PATEL', 104, 49000.00),
(12, 'ARSHDEEP SINGH', 106, 62000.45),
(13, 'KULDEEP YADAV', 103, 75000.66),
(14, 'SURYAKUMAR YADAV', 105, 57000.14),
(15, 'RINKU SINGH', 104, 53000.77);

CREATE TABLE Department
(
Department_ID INT,
Department_Name VARCHAR(50));

INSERT INTO Department(Department_ID,Department_Name) 
VALUES
(101, 'HR'),
(102, 'FINANCE'),
(103, 'IT'),
(104, 'MARKETING'),
(105, 'SALES'),
(106, 'OPERATIONS');

SELECT
E.EMP_ID AS Employee_ID,
E.EMP_NAME AS Employee_Name,
E.SALARY,
D.DEPARTMENT_NAME
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
ORDER BY E.SALARY DESC;

-- Scenario 2 – Customers Without Orders  
-- Scenario 
-- An online shopping company wants to identify customers who have registered on the website but 
-- have not placed any orders. 
-- Display the Customer ID, Customer Name, City, and Order ID. 
-- Arrange the result in ascending order of Customer Name.

CREATE TABLE Customer
(
Customer_ID INT,
Customer_Name VARCHAR(100),
City VARCHAR(50));

INSERT INTO Customer (Customer_ID,Customer_Name,City) 
VALUES 
(101, 'ROHIT SHARMA', 'Chennai'),
(102, 'VIRAT KOHLI', 'Mumbai'),
(103, 'KL RAHUL', 'Delhi'),
(104, 'SHUBMAN GILL', 'Hyderabad'),
(105, 'YASHASVI JAISWAL', 'Bangalore'),
(106, 'SHREYAS IYER', 'Pune'),
(107, 'MS DHONI', 'Ahmedabad'),
(108, 'RISHABH PANT', 'Kochi'),
(109, 'HARDIK PANDYA', 'Kolkata'),
(110, 'RAVINDRA JADEJA', 'Lucknow'),
(111, 'AXAR PATEL', 'Nagpur'),
(112, 'ARSHDEEP SINGH', 'Jaipur'),
(113, 'KULDEEP YADAV', 'Coimbatore'),
(114, 'SURYAKUMAR YADAV', 'Surat'),
(115, 'RINKU SINGH', 'Patna');

CREATE TABLE Orders
(
Order_ID INT,
Customer_ID INT,
Order_Date DATE,
Order_Amount DECIMAL(10,2));

INSERT INTO Orders(Order_ID,Customer_ID,Order_Date,Order_Amount) 
VALUES
(1001, 101, '2026-07-20', 2500.00),
(1002, 102, '2026-07-21', 1800.00),
(1003, 103, '2026-07-22', 3200.00),
(1004, 104, '2026-07-23', 1500.00),
(1005, 105, '2026-07-24', 2750.00),
(1006, 106, '2026-07-25', 4200.00),
(1007, 107, '2026-07-26', 3900.00),
(1008, 108, '2026-07-27', 2100.00),
(1009, 109, '2026-07-28', 5000.00),
(1010, 110, '2026-07-29', 1700.00),
(1011, 111, '2026-07-30', 2900.00),
(1012, 112, '2026-07-31', 3600.00);

SELECT
C.Customer_ID,
C.Customer_Name,
C.City,
O.Order_ID
FROM Customer C
LEFT JOIN Orders O
ON C.Customer_ID = O.CUSTOMER_ID
WHERE O.Order_ID IS NULL
ORDER BY C.Customer_Name ASC;

-- Scenario 3 – Departments Without 
-- Employees  
-- Scenario 
-- The management wants to identify departments that currently have no employees assigned. 
-- Display the Department ID, Department Name, Employee ID, and Employee Name. 
-- Sort the result by Department Name.

CREATE TABLE Department (
Department_ID INT PRIMARY KEY,
Department_Name VARCHAR(50)
);

iNSERT INTO Department (Department_ID, Department_Name) VALUES
(101, 'HR'),
(102, 'Finance'),
(103, 'IT'),
(104, 'Marketing'),
(105, 'Sales'),
(106, 'Operations'),
(107, 'Research'),
(108, 'Legal');

CREATE TABLE Employee (
Emp_ID INT PRIMARY KEY,
Emp_Name VARCHAR(100),
Department_ID INT,
FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);

INSERT INTO Employee (Emp_ID, Emp_Name, Department_ID) VALUES
(1, 'Raj', 101),
(2, 'Priya', 102),
(3, 'Arun', 103),
(4, 'Meena', 104),
(5, 'Karthik', 105),
(6, 'Divya', 103),
(7, 'Vijay', 102),
(8, 'Sneha', 101),
(9, 'Rahul', 105),
(10, 'Anitha', 106),
(11, 'Suresh', 103),
(12, 'Nisha', 104);

SELECT
d.Department_ID,
d.Department_Name,
e.Emp_ID,
e.Emp_Name
FROM Department d
LEFT JOIN Employee e
ON d.Department_ID = e.Department_ID
WHERE e.Emp_ID IS NULL
ORDER BY d.Department_Name;

-- Scenario 4
-- An inventory management team wants to compare the Product Master table with the 
-- Warehouse Stock table. 
-- Generate a report containing: 
-- • Products available in both tables 
-- • Products available only in the Product Master 
-- • Products available only in the Warehouse Stock 
-- Display the Product ID, Product Name, Warehouse Quantity. 
-- Sort the report by Product ID.

CREATE TABLE Product_Master (
Product_ID INT PRIMARY KEY,
Product_Name VARCHAR(100)
);

INSERT INTO Product_Master (Product_ID, Product_Name) VALUES
(101, 'Laptop'),
(102, 'Mouse'),
(103, 'Keyboard'),
(104, 'Monitor'),
(105, 'Printer'),
(106, 'Scanner'),
(107, 'Webcam'),
(108, 'Speaker'),
(109, 'Headphones'),
(110, 'Hard Disk'),
(111, 'SSD'),
(112, 'Router'),
(113, 'Projector'),
(114, 'UPS'),
(115, 'Microphone');

CREATE TABLE Warehouse_Stock (
Product_ID INT PRIMARY KEY,
Quantity INT
);

INSERT INTO Warehouse_Stock (Product_ID, Quantity) VALUES
(101, 25),
(102, 50),
(103, 40),
(104, 20),
(105, 10),
(106, 15),
(107, 30),
(108, 35),
(109, 18),
(110, 12),
(116, 8),
(117, 5);

SELECT
COALESCE(pm.Product_ID, ws.Product_ID) AS Product_ID,
pm.Product_Name,
ws.Quantity
FROM Product_Master pm
FULL OUTER JOIN Warehouse_Stock ws
ON pm.Product_ID = ws.Product_ID
ORDER BY Product_ID;                                       -- DOUT


-- Scenario 5
-- A company wants to generate an organization hierarchy report. 
-- Display each Employee Name along with their Reporting Manager Name. 
-- Include employees even if they do not have a manager. 
-- Sort the report alphabetically by Employee Name

CREATE TABLE EmployeeS (
Emp_ID INT PRIMARY KEY,
Emp_Name VARCHAR(100),
Manager_ID INT,
Department VARCHAR(50)
);

INSERT INTO EmployeeS (Emp_ID, Emp_Name, Manager_ID, Department) VALUES
(101, 'Rajesh', NULL, 'Management'),
(102, 'Priya', 101, 'HR'),
(103, 'Arun', 101, 'Finance'),
(104, 'Meena', 102, 'HR'),
(105, 'Karthik', 103, 'Finance'),
(106, 'Divya', 103, 'Finance'),
(107, 'Vijay', 101, 'IT'),
(108, 'Sneha', 107, 'IT'),
(109, 'Rahul', 107, 'IT'),
(110, 'Anitha', 102, 'HR'),
(111, 'Suresh', 107, 'IT'),
(112, 'Nisha', 103, 'Finance'),
(113, 'Ravi', 101, 'Sales'),
(114, 'Pooja', 113, 'Sales'),
(115, 'Deepak', 113, 'Sales');

SELECT
e.Emp_Name AS Employee_Name,
m.Emp_Name AS Manager_Name
FROM Employee e
LEFT JOIN Employee m
ON E.Manager_ID = m.Emp_ID
ORDER BY e.Emp_Name;                                 -- DOUT



SELECT * FROM Customer;
SELECT * FROM OrderS;
