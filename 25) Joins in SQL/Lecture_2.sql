CREATE TABLE Employees3(
	employee_id  SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	department_id INT
);
INSERT INTO Employees3(employee_id ,first_name,last_name , department_id )VALUES
(1,'Rahul', 'Sharma',101),
(2,'Priya', 'Mehta', 102),
(3,'Ankit', 'Verma', 103),
(4,'Simran','Kaur',NULL),
(5,'Aman','Singh',101);

SELECT * FROM employees3;

CREATE TABLE Departments(
	department_id INT,
	department_name VARCHAR(50)
);
INSERT INTO Departments(department_id, department_name)VALUES
(101,'Sales'),
(102, 'Marketing'),
(103, 'IT'),
(104, 'HR');

SELECT * FROM Departments;

SELECT e.employee_id,e.first_name, e.last_name, 
		d.department_id, d.department_name
FROM employees3 e
INNER JOIN
Departments d
ON e.department_id=d.department_id;


SELECT e.employee_id,e.first_name, e.last_name, 
		d.department_id, d.department_name
FROM employees3 e
LEFT JOIN
Departments d
ON e.department_id=d.department_id;





