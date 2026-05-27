CREATE DATABASE company2;
CREATE TABLE employee2(
	employee_id INT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	position VARCHAR(50),
	department VARCHAR(50),
	hire_date DATE,
	salary NUMERIC(10,2)
);


SELECT * FROM employee2;
INSERT INTO employee2 (employee_id, name, position, department, hire_date, salary)
		VALUES(101, 'Amit', 'Data Analyst','Data Science','2022-05-15', 65000.00),
			(102, 'Priya', 'Sales Executive', 'Sales','2023-11-25',58000.00);
SELECT * FROM employee2;
		