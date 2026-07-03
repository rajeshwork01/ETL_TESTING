Create Database ETL_TESTING4;

USE ETL_TESTING4;

create table etl_testing4.Student(
Emp_id int,
Emp_name varchar(30),
Dep varchar(15),
Salary varchar(6),
City varchar(30));

select * from student;

INSERT INTO student(Emp_id, Emp_name, Dep,Salary,City)
values(101,'JOHN','IT','50000','Chennai'),
(102,'Mary','HR','35000','Bangalore'),
(103,'David','Finance','60000','Hyderabad'),
(104,'Sam','IT','45000','Chennai'),
(105,'Priya','HR','40000','Madurai');

select * from student;

-- Multiple Column

select Emp_name, Salary From Student;

-- distinct using in select statement

select distinct Dep from student;

select distinct city from student;

select * From Student
Limit 3;