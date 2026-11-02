Drop database Employee;
create database Employee;
use Employee; 

INSERT INTO departments (department_id, department_name) VALUES
(1, 'Software Development'),
(2, 'Marketing'),
(3, 'Data Science'),
(4, 'Human Resources'),
(5, 'Product Management'),
(6, 'Content Creation'),
(7, 'Finance'),
(8, 'Design'),
(9, 'Research and Development'),
(10, 'Customer Support'),
(11, 'Business Development'),
(12, 'IT'),
(13, 'Operations');
select *from Departments;
INSERT INTO Location (Location_id,Location) VALUES
(1,'Chennai'),
(2,'Bangalore'),
(3,'Hyderabad'),
(4,'Pune');

select * from Location;
INSERT INTO employees (employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary) VALUES
(5001, 'Vihaan Singh', 'M', 27, '2015-01-20', 'Data Analyst', 3, 4, 60000),
(5002, 'Reyansh Singh', 'M', 31, '2015-03-10', 'Network Engineer', 12, 1, 80000),
(5003, 'Aaradhya Iyer', 'F', 26, '2015-05-20', 'Customer Support Executive', 10, 2, 45000),
(5004, 'Kiara Malhotra', 'F', 29, '2015-07-05', NULL, 8, 3, 70000),
(5005, 'Anvi Chaudhary', 'F', 25, '2015-09-11', 'Business Development Executive', 11, 1, 55000),
(5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 8, 2, 65000),
(5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 2, 3, 90000),
(5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 8, 4, 70000),
(5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 11, 3, 55000),
(5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 12, 4, 80000),
(5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 2, 1, 60000),
(5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 13, 2, 95000),
(5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 10, 3, 75000),
(5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 10, 2, 60000),
(5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 7, 1, 85000),
(5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 4, 4, 100000),
(5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 12, 2, 80000),
(5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 9, 3, 75000),
(5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 4, 4, 55000),
(5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 1, 1, 90000),
(5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 7, 3, 85000),
(5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 4, 4, 60000),
(5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 2, 2, 70000),
(5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 5, 1, 95000),
(5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 3, 4, 100000),
(5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 3, 2, 75000),
(5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 6, 3, 60000),
(5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 6, 1, 60000),
(5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 12, 2, 80000),
(5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 5, 1, 90000);

Select *from Employees;


1. Distinct Values:

-- a query to retrieve distinct salaries from the Employees table.

Select DISTINCT Salary From Employees;

2. Alias (AS):

-- Provide aliases for the "age" and "salary" columns as "Employee_Age" and
"Employee_Salary", respectively.

Select Employee_id,Employee_name,
Age AS Employee_Age,
Salary AS Employee_Salary 
From Employees; 

3. Where Clause & Operators:

 Retrieve employees with a salary greater than ₹50000 and hired before
2016-01-01.
Select* From Employees 
where Salary>50000
And Hire_date<'2016-01-01';
--Find the employee whose designation is missing and fill it with "Data
Scientist".

Select*
From Employees
where Designation is null ; 
set sql_Safe_updates=0;
update Employees Set Designation='Data Scientist' Where Designation is Null;
select*from Employees where Designation='Data Scientist';  

Sorting and Grouping Data:

1. ORDER BY:

-- Find employees sorted by department ID in ascending order and salary in
descending order. 
Select*From Employees
order by Department_id ASC,Salary DESc;

2. LIMIT:

--Display the first 5 employees hired in the year 2018.
Select*From Employees
where Year(Hire_date)=2018
order By Hire_Date ASC
Limit 5; 

3. Aggregate Functions:

--Calculate the sum of all salaries in the Finance department.

Select Sum(salary) from Employees;

--Find the minimum age among all employees.

Select Min(Age) From Employees; 

4. GROUP BY:

--List the maximum salary for each location.
Select Location_id,Max(Salary) AS Max_Salary From Employees
Group By Location_id;

-- Calculate the average salary for each designation containing the word
'Analyst'.
Select Designation,Avg (Salary) AS Average_Salary
From Employees
Where Designation LIKE '%Analyst%'
Group By Designation; 

5. HAVING:

-- Find departments with less than 3 employees.

Select Department_id,Count(*) AS Employee_count
From Employees
Group By Department_id
Having Employee_Count < 3;

-- Find locations with female employees whose average age is below 30

Select Location_id,Avg(age) AS Avg_Female_Age
From Employees
Where Gender IN('F','Female')
Group By Location_id
Having Avg(Age) <30; 
Joins:
1. Inner Join:

--List employee names, their designations, and department names where
employees are assigned to a department.

select  e.Employee_name,e.Designation,
d.Department_name From  Employees e
INNER JOIN Departments d ON e.Department_id= d.Department_id; 

2. Left Join:

-- List all departments along with the total number of employees in each
department, including departments with no employees. 

Select d.Department_id,d.Department_name,
count(e.Employee_id)AS Total_Employees
From Departments d
Left join Employees e on d.department_id=e.Department_id
Group By d.Department_id,d.Department_name
Order By d.Department_id;  

3. Right Join:

--Display all locations along with the names of employees assigned to each
location. If no employees are assigned to a location, display NULL for
employee name. 

Select 
l.Location,
e.Employee_name 
From Employees e
Right Join Location l ON Location=l.Location
Order By l.Location,e.Employee_name;
