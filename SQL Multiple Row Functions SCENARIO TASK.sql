use single_rowfunction;

select SUM(salary) AS TOTAL_SALARY_EXPANSE FROM employee;

create Table Student(
Student_ID int,
Student_Name varchar(100),
Course varchar(50),
Marks int);

INSERT INTO Student (Student_ID, Student_Name, Course, Marks) VALUES
(1, 'Arun', 'SQL', 85),
(2, 'Priya', 'SQL', 92),
(3, 'Rahul', 'Python', 78),
(4, 'Sneha', 'SQL', 88),
(5, 'Karan', 'Java', 75),
(6, 'Neha', 'SQL', 95),
(7, 'Amit', 'Python', 80),
(8, 'Pooja', 'SQL', 90),
(9, 'Vikram', 'Java', 82),
(10, 'Divya', 'SQL', 87);

select AVG(Marks) AS AVG_Marks FROM student;

use single_rowfunction;

select MAX(Price) AS MAX_Price FROM product;

select MIN(Price) AS MIN_Price FROM product;

select COUNT(Customer_ID) AS Registered_Customers FROM customer;

SELECT COUNT(Emp_ID) AS otal_Number_Of_Employees,
sum(Salary)AS TOTAL_SALARY_PAID,
AVG(salary) AS Average_salary,
MAX(salary) AS Highest_salary,
MIN(salary) AS Lowest_salary
FROM employee3;














