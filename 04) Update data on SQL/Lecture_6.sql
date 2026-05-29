DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	age INT,
	city VARCHAR(50)
);
SELECT * FROM USERS;
INSERT INTO users(username, email, age , city)VALUES
('Rajesh', 'rajesh@gmail.com',25,'Mumbai'),
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
SELECT *FROM users ORDER BY user_id ASC;

UPDATE users
SET city='Chennai'
WHERE age>=30;
SELECT *FROM users;

UPDATE users
SET age=31, city='kolkata'
WHERE username='Priya'
SELECT *FROM users;
		
		




