-- Retrieve the first_name, salary, and calculate a 10% bonus on the salary.
SELECT *FROM employee2;
SELECT first_name, salary,(salary*0.10) AS Bonus FROM employee2;

-- Calculate the annual salary and salary increment by 5% - showthe monthly new salary as .
SELECT first_name, last_name,salary,
			(salary*12) AS annual salary,
			(salary*0.05) AS increment salary,
			(salary+salary*0.05) AS new_salary
SELECT * FROM employee2;