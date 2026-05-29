-- AND operator
SELECT * FROM employee2;
SELECT * FROM employee2 
WHERE  age>=45 AND salary>=50000;

-- OR operator
SELECT *  FROM employee2;
SELECT * FROM employee2
WHERE age >=60 OR salary>=900000

-- NOT operator
SELECT * FROM employee2
WHERE NOT(department='IT')
