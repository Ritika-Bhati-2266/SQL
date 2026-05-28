DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	age INT,
	city VARCHAR(50)
);
SELECT * FROM USERS;
INSERT INTO
	USERS (USERNAME, EMAIL, AGE, CITY)
VALUES
	('Rajesh', 'rajesh@gmail.com', 25, 'Mumbai'),
	('Priya', 'priya@gmail.com', 30, 'Delhi'),
	('Ankit', 'ankit@gmail.com', 28, 'Banglore'),
	('Sneha', 'sneha@gmail.com', 22, 'Pune'),
	('Vikram', 'vikram@gmail.com', 35, 'Hyderabad');

SELECT * FROM users;
SELECT user_id FROM users;
SELECT user_id, username FROM users;
SELECT user_id, username,age FROM users;


UPDATE users
SET age=28
WHERE username='Rajesh';
SELECT * FROM users;


SELECT*
FROM USERS
ORDER BY USER_ID ASC;


UPDATE users
SET city='Chennai'
WHERE age>=30;
SELECT *FROM users;



UPDATE users
SET age=31, city='kolkata'
WHERE username='Priya'
SELECT *FROM users;

UPDATE users
SET age=age+1
WHERE email LIKE '%@gmail.com'
SELECT * FROM users;
DELETE FROM users WHERE user_id=7;

-- To rename the username column to full name
ALTER TABLE users
RENAME COLUMN username TO full_name;
SELECT * FROM USERS ORDER BY USER_ID ASC;

-- To change the datatype of age
ALTER TABLE users
ALTER COLUMN age TYPE SMALLINT;
SELECT *FROM USERS ORDER BY USER_ID ASC;

-- To add a NOT NULL CONSTRAINT to city column
ALTER TABLE users
ALTER COLUMN city SET NOT NULL;
SELECT * FROM USERS ORDER BY USER_ID ASC;


ALTER TABLE users
DROP CONSTRAINT age;

-- Adding check constraint to age column
ALTER TABLE users
ADD CONSTRAINT age CHECK(age>=18);
SELECT * FROM USERS ORDER BY USER_ID ASC;







