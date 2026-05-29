SELECT * FROM employee2;
-- Match age 30
SELECT * FROM employee2
WHERE age=30;

--Except 30
SELECT *FROM employee2
WHERE age<>30;

-- OR
SELECT first_name, age FROM employee2
WHERE AGE!=30;

-- Salary greater than 50000
SELECT * FROM employee2
WHERE salary>50000;

-- Salary lesser than 50000 or equal to 50000
SELECT * FROM employee2
WHERE salary<=50000;