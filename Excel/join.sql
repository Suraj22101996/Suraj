create database Class;
create table student(id int,Name varchar(23),marks int);
select * from student where marks>70;
update student set marks=79 where id=1;
desc student;
select * from student order by name asc;
select avg(marks) from student group by name;


update student SET marks=85;

where id=2;


create database Person;

use Person;

create table employees3(id int,name varchar(20),salary
decimal(9,2),department varchar(30));

INSERT INTO Employees3(ID, Name, Salary, Department)
VALUES 
(1, 'Amit Sharma', 45000.50, 'HR'),
(2, 'Neha Patil', 55000.00, 'IT'),
(3, 'Raj Verma', 60000.75, 'Finance');

desc Employees3 ;
select * from Employees3 where id=1;
select * from Employees3;
select*from employees3 where department='HR';
update employees3 set salary = 50000.89 where id=1;

insert into Employees3(id,name,salary,department)
values(4,'Sita',47000.90,'Mangement'),
(5,'Karan',6000.98,'ITconsulting');
select* from Employees3 order by salary desc;
SELECT Department, COUNT(*) AS Total_Employees
FROM Employees3
GROUP BY Department;

SELECT * FROM employees3
WHERE Salary > 50000;

create database Sell;
use Sell;

create table purchases(CustomerID int,PurchaseDate Date, ReturnDate Date);
insert into purchases (CustomerID,PurchaseDate, ReturnDate )Values
(1, '2024-01-01', '2024-01-05'),
(2, '2024-01-02', '2024-01-06'),
(3, '2024-01-03', '2024-01-07'),
(4, '2024-01-04', '2024-01-08'),
(5, '2024-01-05', '2024-01-09'),
(6, '2024-01-06', '2024-01-10'),
(7, '2024-01-07', '2024-01-11'),
(8, '2024-01-08', '2024-01-12'),
(9, '2024-01-09', '2024-01-13'),
(10, '2024-01-10', '2024-01-14');

  


CREATE TABLE YearsData (
    CustomerID INT,
    ReturnYear INT
);


INSERT INTO YearsData (CustomerID, ReturnYear)
SELECT CustomerID, YEAR(ReturnDate)
FROM purchases;


CREATE TABLE student_info (
    StudentID INT PRIMARY KEY,
    FirstNames VARCHAR(50),
    LastNames VARCHAR(50)
);
 
-- Insert 10 values for each variable
INSERT INTO student_info (StudentID, FirstNames, LastNames) VALUES
(1, 'John', 'Doe'),
(2, 'Alice', 'Smith'),
(3, 'Bob', 'Johnson'),
(4, 'Emily', 'Brown'),
(5, 'Michael', 'Davis'),
(6, 'Sarah', 'Wilson'),
(7, 'David', 'Lee'),
(8, 'Jessica', 'Taylor'),
(9, 'Chris', 'Evans'),
(10, 'Emma', 'Thompson');
Copy and Paste the following code to create a table exam_info within the database

-- Create the table
create database yes;
use yes;
CREATE TABLE exam_info (
    StudentID INT PRIMARY KEY,
    Subjects VARCHAR(50),
    Scores integer
);
 
-- Insert 10 values for each variable
INSERT INTO exam_info (StudentID, Subjects, Scores) VALUES
(1, 'Math',  80),
(2, 'English',  75),
(3, 'Science',  78),
(4, 'Math',  60),
(5, 'English', 86),
(6, 'Science', 90),
(7, 'Science', 75),
(8, 'English', 75),
(9, 'Math',  55),
(10, 'Math',  67);


CREATE TABLE student_info (
    StudentID INT PRIMARY KEY,
    FirstNames VARCHAR(50),
    LastNames VARCHAR(50)
);
 
-- Insert 10 values for each variable
INSERT INTO student_info (StudentID, FirstNames, LastNames) VALUES
(1, 'John', 'Doe'),
(2, 'Alice', 'Smith'),
(3, 'Bob', 'Johnson'),
(4, 'Emily', 'Brown'),
(5, 'Michael', 'Davis'),
(6, 'Sarah', 'Wilson'),
(7, 'David', 'Lee'),
(8, 'Jessica', 'Taylor'),
(9, 'Chris', 'Evans'),
(10, 'Emma', 'Thompson');


select student_info.* from student_info join exam_info   on student_info.StudentID =exam_info.StudentID  where exam_info.scores>75;
      