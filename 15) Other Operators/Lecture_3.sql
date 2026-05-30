SELECT * FROM employee4;

-- 1) Retrieve employees where the email column is NULL (if applicable).
SELECT first_name, last_name, email 
FROM employee4
WHERE email is NULL;

-- 2) List employee sorted by salary in DESCENDING order.
SELECT first_name, last_name, salary 
FROM employee4
ORDER BY salary DESC;

-- 3) Retrieve the top 5 highest paid employees.
SELECT first_name, salary FROM employee4 
ORDER BY salary DESC
LIMIT 5;