
-- Retrieve all data from the employees table
SELECT * FROM employees;

-- Retrieve all data from the departments table
SELECT * from departments

-- 1.1: Retrieve all data from the departments employees table
Select * from dept_emp

-- 1.2: Retrieve all data from the salaries table
SELECT * FROM salaries

-- 2.1: Select the first name and last name of all employees
SELECT first_name, last_name FROM employees

-- 2.2 Select all records from the employees table
SELECT * FROM employees;

-- 2.3 Select the department number from the departments table
SELECT dept_no FROM departments

-- 2.4 Select all records from the departments table
SELECT * FROM departments;

-- 2.5 Select all employees whose first name is 'Elvis'
SELECT * from employees WHERE first_name='Elvis'
    
-- 2.6 Select all employees whose first name is 'Hilari'
SELECT * from employees WHERE first_name='Hilari'

-- 3.1 Select all male employees whose first name is 'Denis'
SELECT * FROM employees WHERE gender='M' AND first_name='Denis'
  
-- 3.2 Select all female employees whose last name is 'Reistad'
SELECT * FROM employees WHERE gender='F' AND last_name='Reistad'

-- 3.3 Select all employees whose first name is 'Denis' or 'Elvis'
SELECT * FROM employees
WHERE first_name='Denis' OR first_name='Elvis'
    
-- 3.4 Retrieve a list of all employees whose first name is either
'Kellie' or 'Aruna'
SELECT * FROM employees
WHERE first_name='Kellie' OR first_name='Aruna'

-- 3.5 Retrieve a list of all male or female employees whose last name is 'Denis'
SELECT * FROM employees WHERE 
last_name = 'Denis' AND (gender = 'M' OR gender = 'F')

-- 3.6 Retrieve a list of all female employees whose first name is either
'Kellie' or 'Aruna'
SELECT * FROM employees WHERE 
gender='F' and (first_name='Kellie' or first_name='Aruna')

-- 3.7: Retrieve a list of all employees whose first name is either 'Cathie', 'Mark'
---or 'Nathan'
SELECT * FROM employees
WHERE first_name = 'Cathie' OR first_name = 'Mark' OR first_name = 'Nathan';

-- Alternative Solution
SELECT * FROM employees WHERE 
first_name in ('Cathie', 'Mark', 'Nathan')

-- NOT IN
SELECT * FROM employees WHERE 
first_name not in ('Cathie', 'Mark', 'Nathan')

-- 4.1: Extract a list of all employees whose first name starts with 'Mar'
SELECT * FROM employees WHERE 
first_name like 'Mar%'

-- 4.2: Extract a list of all employees whose first name starts with 'Ar'
SELECT * FROM employees WHERE 
first_name like 'Ar%'

-- 4.3: Extract a list of all employees whose first name ends with 'Ar'
SELECT * FROM employees WHERE 
first_name like '%ar'

-- 4.4: Extract a list of all employees whose first name contain 'Ar'
SELECT * FROM employees
WHERE first_name LIKE('%ar%');

-- 4.5: Extract all individuals from the 'employees' table whose first name 
-- starts with 'Mark'
SELECT * FROM employees WHERE 
first_name like 'Mark%'

-- 4.6: Extract all individuals from the employees table whose first name 
-- does not contain 'Jack'
SELECT * FROM employees WHERE 
first_name not like '%Jack%'

-- 5.1: Extract a list of all employees who were employed between
-- 1st of January, 1990 and 1st January, 2000
SELECT * FROM employees WHERE 
hire_date BETWEEN '1990-01-01' AND '2000-01-01'
    
-- 5.2: Extract a list of all employees who were not employed between
-- 1st of January, 1990 and 1st January, 2000
SELECT * FROM employees WHERE 
hire_date NOT BETWEEN '1990-01-01' AND '2000-01-01'
	
-- 5.3: Select all the records from the salaries table, regarding contracts
-- from 66000 to 70000 dollars/year
SELECT * FROM salaries WHERE 
salary BETWEEN '66000' AND '70000'

-- 5.4: Retrieve a list of individuals whose emp_no is not between
-- 10004 and 10012.
SELECT * FROM salaries WHERE 
emp_no NOT BETWEEN '10004' AND '10012'

-- 5.5: Extract a list of employees whose first name is not null
SELECT * FROM employees WHERE 
first_name  is not NULL

-- 5.6: Extract a list of employees whose first name is null
  SELECT * FROM employees WHERE 
first_name  is NULL  

-- 5.7: Select the names of all departments whose department number value 
--is not null
SELECT dept_name FROM departments WHERE
dept_no IS NOT NULL

-- 6.1: Retrieve a list of all employees whose first name is 'Mark'
SELECT * FROM employees
WHERE first_name = 'Mark';

-- 6.2: Retrieve a list of all employees whose first name is not 'Mark'
SELECT * FROM employees WHERE
first_name <>'Mark'

-- 6.3: Retrieve a list of all employees whose first name is not 'Mark'
SELECT * FROM employees WHERE
first_name !='Mark'

-- 6.4: Retrieve a list of all employees who were employed after 1st of January, 1997.
SELECT * FROM employees WHERE
hire_date >'1997-01-01'

-- 6.5: Retrieve a list of all employees who were employed on or after 1st of January,
--1997.
SELECT * FROM employees WHERE
hire_date >='1997-01-01'

-- 6.6: Retrieve a list of all employees who were employed before 1st of February, 1990
SELECT * FROM employees WHERE
hire_date <'1990-02-01'

-- 6.7: Retrieve a list of all female employees who were hired on or after 
---1st January, 1999. 
SELECT * FROM employees WHERE
hire_date >'1999-01-01' AND gender='F'

-- 6.8: Extract a list with employees' salaries higher than 50,000 dollars per annum
SELECT * FROM salaries WHERE
salary >'50000'

-- 7.1: Select distinct gender from the employees table
SELECT Distinct gender
FROM employees

-- 7.2: Retrieve a list of the different first names in the employees database
SELECT DISTINCT first_name
FROM employees    

-- 7.3: Extract a list with employees' salaries higher than 50,000 dollars per annum
-- Sort the list by the most paid employee
SELECT * FROM salaries WHERE
salary>'50000' ORDER BY salary DESC

-- 7.4: Select all records in the employees table and order by first name
SELECT * FROM employees
ORDER BY first_name;

-- 7.5: Select all records and order by first name in descending order
SELECT * FROM employees
ORDER BY first_name DESC;

-- 7.6: Select all records and order by first name and last name
-- in ascending order
SELECT * FROM employees
ORDER BY first_name, last_name ASC;

-- 7.7: Retrieve a list of the first 5 records in the employees table 
-- and order by emp_no in ascending order
SELECT * FROM employees
ORDER BY emp_no LIMIT 5;

-- 7.8: How many firstname are in the employees table. Rename the result as
-- FirstName_Count
SELECT COUNT(first_name) as FirstName_Count
FROM employees;

-- 7.9: How many distinct first names we have in the employees table
SELECT DISTINCT first_name, COUNT(*) as FirstName_Count
FROM employees GROUP BY first_name ORDER BY FirstName_Count DESC



