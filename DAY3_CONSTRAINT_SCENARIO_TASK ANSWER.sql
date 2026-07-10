Create database CONSTRAINTS;
USE CONSTRAINTS;

CREATE TABLE Employee(
EmpID INT,
EmpName VARCHAR(50),
Email VARCHAR(100) UNIQUE,
PhoneNo VARCHAR(15),
Department VARCHAR(30));

INSERT INTO Employee (EmpID, EmpName,Email,PhoneNo, Department)
VALUES
(101, 'Ravi',  'Ravi@gmail.com','9876543210', 'IT'),
(102, 'Meena',  'meena@gmail.com','9876543211','HR');

Select * From employee; 

USE CONSTRAINTS;

CREATE TABLE Orders(
customerID INT PRIMARY KEY,
CustomerName VARCHAR(50));

USE CONSTRAINTS;

CREATE TABLE Orders (
OrderID INT PRIMARY KEY,
CustomerID INT,
ProductID VARCHAR(20),
OrderDate DATE,
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID));

INSERT INTO Orders
VALUES (1003, 999, 'P103', '2026-07-03');

Select * From Orders;
CREATE TABLE BankAccount (
Account_No INT,
Customer_Name VARCHAR(50) NOT NULL,
Account_Type VARCHAR(20),
	Check(Account_Type IN ('Savings','Current')),
Balance VARCHAR(30));

INSERT INTO BankAccount (Account_No, Customer_Name,Account_Type, Balance)
VALUES
(5001, 'John',  'Savings', '25000'),
(5002 , 'Priya',  'Current', '80000');

CREATE TABLE Assets ( 
Asset_ID VARCHAR(30) PRIMARY KEY, 
Asset_Name VARCHAR(30),	
Status VARCHAR(20) DEFAULT 'Active',
Purchase_Date DATE
); 

INSERT INTO Assets (Asset_ID,Asset_Name,Status,Purchase_Date)
VALUES
(A101, 'Laptop',  'Active', 2026-01-15),
(A102 , 'Monitor',  'Active',2026-02-10);

INSERT INTO Assets (Asset_ID,Asset_Name,Status,Purchase_Date)
VALUES
(A101, 'Laptop','INACTIVE',2026-08-15);


INSERT INTO Student (StudentID, Age, Course)
VALUES (103, 18, 'BCA');


INSERT INTO Employee (EmpID, EmpName,Email, Department)
VALUES
(101, 'Ravi',  'Ravi@gmail.com', 'IT'),
(102, 'Meena',  'meena@gmail.com', 'HR');
