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