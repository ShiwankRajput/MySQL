CREATE DATABASE school;
USE school;

CREATE TABLE student(
	student_id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO student
VALUES
(101,"adam"),
(102,"bob"),
(103,"casey");

SELECT * FROM student;

CREATE TABLE course(
	student_id INT PRIMARY KEY,
    course VARCHAR(50)
);

INSERT INTO course
VALUES
(102,"english"),
(105,"math"),
(103,"science"),
(107,"computer science");

SELECT * FROM course;

-- inner join :
SELECT student.student_id,name,course
FROM student
INNER JOIN course
ON student.student_id = course.student_id;

         -- alias in inner join : table_name as any_name
SELECT *
FROM student as s
INNER JOIN course as c
ON s.student_id = c.student_id;  


-- Outer join :

-- 1) left join :
SELECT *
FROM student as s
LEFT JOIN course as c
ON s.student_id = c.student_id; 

-- 2) right join :
SELECT * 
FROM student as s
RIGHT JOIN course as c
ON s.student_id = c.student_id;

-- 3) full join : (in mysql FULL JOIN does not exist so we can perform union on LEFT and RIGHT JOIN to achieve it)
SELECT * 
FROM student as s
LEFT JOIN course as c
ON s.student_id = c.student_id
UNION
SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.student_id = c.student_id;


-- left exclusive join :
SELECT *
FROM student as s
LEFT JOIN course as c
ON s.student_id = c.student_id
WHERE c.student_id IS NULL;

-- right exclusive join :
SELECT * 
FROM student as s
RIGHT JOIN course as c
ON s.student_id = c.student_id
WHERE s.student_id IS NULL;

-- full exclusive join :
SELECT *
FROM student as s
LEFT JOIN course as c
ON s.student_id = c.student_id
WHERE c.student_id IS NULL
UNION
SELECT * 
FROM student as s
RIGHT JOIN course as c
ON s.student_id = c.student_id
WHERE s.student_id IS NULL;

CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id VARCHAR(6)
);

INSERT INTO employee
VALUES
(101,"adam",103),
(102,"bob",104),
(103,"casey",null),
(104,"donald",103);

SELECT * FROM employee;

-- self join :
SELECT a.name as manager_name, b.name
FROM employee as a
JOIN employee as b
WHERE a.id = b.manager_id;
