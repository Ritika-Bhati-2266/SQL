CREATE TABLE employee3(
employee_id INT PRIMARY KEY,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(20) NOT NULL,
email VARChAR(50),
department VARCHAR(20),
salary NUMERIC(10,2),
joining_date DATE,
age INT
);
SELECT * FROM employee3;