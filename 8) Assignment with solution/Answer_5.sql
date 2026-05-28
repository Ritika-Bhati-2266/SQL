CREATE DATABASE ASSIGNMENT
-- Drop the table if it already exists
DROP TABLE IF EXISTS employees;
-- Create the employees table
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2) CHECK (salary > 0),
    joining_date DATE NOT NULL,
    age INT CHECK (age >= 18)
);
SELECT * FROM employees;


-- Insert data into employees table
INSERT INTO employees (first_name, last_name, department, salary, joining_date, age) VALUES
('Amit', 'Sharma', 'IT', 60000.00, '2022-05-01', 29),
('Neha', 'Patel', 'HR', 55000.00, '2021-08-15', 32),
('Ravi', 'Kumar', 'Finance', 70000.00, '2020-03-10', 35),
('Anjali', 'Verma', 'IT', 65000.00, '2019-11-22', 28),
('Suresh', 'Reddy', 'Operations', 50000.00, '2023-01-10', 26);
SELECT * FROM employees;

-- Assignment Questions
--Q1: Retrieve all employees’ first_name and their departments.
SELECT first_name,department FROM employees;


--Q2: Update the salary of all employees in the 'IT' department by increasing it by 10%.
UPDATE employees
SET salary =salary+(salary*0.1)
WHERE department='IT';
SELECT * FROM employees;

--Q3: Delete all employees who are older than 34 years.
DELETE FROM employees 
WHERE age>34;
SELECT * FROM employees;

--Q4: Add a new column `email` to the `employees` table.
ALTER TABLE employees
ADD COLUMN email VARCHAR(100);
SELECT * FROM employees;


--Q5: Rename the `department` column to `dept_name`.
ALTER TABLE employees
RENAME COLUMN department TO dept_name;
SELECT * FROM employees;

