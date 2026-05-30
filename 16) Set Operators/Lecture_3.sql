DROP TABLE IF EXISTS student_2023;
CREATE TABLE student_2023(
	student_id INT PRIMARY KEY,
	student_name VARCHAR(100),
	course VARCHAR(50)
);

INSERT INTO student_2023(student_id, student_name, course)VALUES
(1, 'Aarav Sharma', 'Computer Science'),
(2, 'Ishita Verma', 'Mechanical Engineering'),
(3, 'Kabir Patel', 'Electronics'),
(4, 'Ananya Desai','Civil Engineering'),
(5, 'Rahul Gupta', 'Computer Science');
SELECT * FROM student_2023;


DROP TABLE IF EXISTS student_2024;
CREATE TABLE student_2024(
	student_id INT PRIMARY KEY,
	student_name VARCHAR(100),
	course VARCHAR(50)
);

INSERT INTO student_2024(student_id, student_name, course)VALUES
(3, 'Kabir Patel', 'Electronics'),
(4, 'Ananya Desai', 'Civil Engineering'),
(5, 'Meera Rao', 'Computer Science'),
(7, 'Vikram Singh', 'Mathematics'),
(8, 'Sanya Kapoor', 'Physics');
SELECT * FROM student_2024;

--1) UNION -- Combines results, removes duplicates
SELECT student_name, course 
FROM student_2023
UNION 
SELECT student_name, course
FROM student_2024;


--2) UNION -- Combines results, keep duplicates
SELECT student_name, course 
FROM student_2023
UNION ALL
SELECT student_name, course
FROM student_2024;

-- 3) INTERSECT -Returns common results in both tables
SELECT student_name, course
FROM student_2023
INTERSECT
SELECT student_name, course
FROM student_2024;
