Create database single_rowfunction;

use single_rowfunction;

create Table Employee(
Emp_ID int,
Emp_Name varchar(100),
Department varchar(50),
salary decimal(10,2));

INSERT INTO employee(Emp_ID, Emp_Name, Department, salary)
values (101,'vijay','cm','20000.50'),
(102,'dhoni','cricketer','30000.00'),
(103,'ronaldo','food ball player','40000.99'),
(104,'roman reigns','wwe','50000.88'),
(105,'Usain Bolt','runner','60000.33'),
(106,'PV Sindhu','badminton player','70000.55');

select * from employee;

-- Upper()

use single_rowfunction;

select upper(Emp_Name) as EMP_NAME from employee;

use single_rowfunction;

create Table Product(
Product_ID int,
Product_Name varchar(100),
Price decimal(10,2),
Category varchar(50));

INSERT INTO Product(Product_ID, Product_Name, Price, Category)
VALUES 
(1,'BAT','2000.80','Lether'),
(2,'MOUSE','299.40','Electronics'),
(3,'MOBILE','24000.49','Electronics'),
(4,'CHAIR','309.56','Furniture'),
(5,'GAS','987.90','Kitchen'),
(6,'WATCH','7700.95','Accessories'),
(7,'HEADPHONE','9999.99','Accessories'),
(8,'LAPTOP','227700.95','Accessories');

select * from product;

select Product_ID,
Product_Name, 
Price AS Original_Price,
ROUND(Price) AS Rounded_Price,
CEIL(Price) AS Ceiling_Price,
FLOOR(Price) AS Floor_Price
From product;

use single_rowfunction;

create Table EMPLOYEE2(
EMPLOYEE_ID int,
EMPLOYEE_Name varchar(100),
JOIN_DATE DATE,
DEPARTMENT varchar(50));

INSERT INTO employee2(EMPLOYEE_ID, EMPLOYEE_Name, JOIN_DATE, DEPARTMENT)
VALUES 
(1,'Roman Reigns','2012-11-18','WWE'),
(2,'John Cena','2002-06-27','WWE'),
(3,'Seth Rollins','2012-11-18','WWE'),
(4,'Randy Orton','2002-04-25','WWE'),
(5,'CM Punk','2006-06-24','WWE'),
(6,'AJ Styles','2016-01-24','WWE'),
(7,'Cody Rhodes','2007-07-13','WWE');

Select EMPLOYEE_Name,
JOIN_DATE,
YEAR (JOIN_DATE) AS Joining_Year,
MONTH (JOIN_DATE) AS Joining_Month,
DAY (JOIN_DATE) AS Joining_Day
FROM employee2;

use single_rowfunction;

create Table Customer(
Customer_ID int,
CustomerE_Name varchar(100),
Mobile_No varchar(15),
Email varchar(100));

INSERT INTO Customer(Customer_ID, CustomerE_Name, Mobile_No, Email)
VALUES 
(1,'Roman Reigns','9876543210','romanreigns@gmail.com'),
(2,'John Cena',NULL,'johncena@gamil.com'),
(3,'Seth Rollins','9123456789',NULL),
(4,'Randy Orton',NULL,NULL),
(5,'CM Punk','9988776655','cm punk@gmail.com'),
(6,'AJ Styles',NULL,'aj style@gmail.com'),
(7,'Cody Rhodes','9012345678',NULL),
(8,'OTC',NULL,'OTC@gmail.com');

select * from Customer;

Select Customer_ID,
CustomerE_Name,
IFNULL(Mobile_No,'Mobile Not Available') AS Mobile_No,
IFNULL(Email,'Email Not Available') AS Email
FROM customer;


select * from Customer;


