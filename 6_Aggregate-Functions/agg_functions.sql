CREATE DATABASE college4;
USE college4;

CREATE TABLE student(
	roll_no INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student
(roll_no, name, marks, grade, city)
VALUES
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

SELECT * FROM student;

SELECT (marks) FROM student ORDER BY marks DESC;

SELECT count(marks) FROM student;
SELECT avg(marks) FROM student;
SELECT sum(marks) FROM student;
SELECT max(marks) FROM student;
SELECT min(marks) FROM student;