CREATE TABLE employee(
	employee_id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	posiition VARCHAR(50),
	department VARCHAR(50),
	hire_date DATE,
	salary NUMERIC(10,2)
);
SELECT * FROM employee;



INSERT INTO employee(name, posiition, department, hire_date, salary)
		VALUES('Ajit Sharma', 'Data Analyst', 'Data Science', '2022-05-15', 65000.00),
	    ('Priya', 'HR manager','Human Resources','2019-03-10',82000.00);
SELECT * FROM employee;

ALTER TABLE employee
RENAME COLUMN posiition to position;
SELECT *FROM employee;

TRUNCATE TABLE employee;


INSERT INTO employee(name, position, department, hire_date, salary)
		VALUES('Ajit Sharma', 'Data Analyst', 'Data Science', '2022-05-15', 65000.00),
	    ('Priya', 'HR manager','Human Resources','2019-03-10',82000.00);
SELECT * FROM employee;;

		