CREATE TABLE employee4(
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	email VARCHAR(50),
	department VARCHAR(20),
	salary NUMERIC(10,2),
	joining_date DATE,
	age INT 
);
SELECT * FROM employee4;
COPY
employee4(employee_id, first_name, last_name, email, department	, salary, joining_date, age
)
FROM 'D:\Data Science\SQL\14) BETWEEN, LIKE, IN Operators\employee_data.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM employee4;



-- 1) Retrieve employees whose salary is between 40,000 and 60,000- Use BETWEEN Operators

SELECT first_name, last_name, salary
FROM employee4
WHERE salary BETWEEN 40000 AND 60000;

