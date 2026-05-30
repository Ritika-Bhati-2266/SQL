SELECT * FROM employee4;

-- 1) Retrieve employees where the email column is NULL (if applicable).
SELECT first_name, last_name, email 
FROM employee4
WHERE email is NULL;
