CREATE DATABASE college3;
USE college3;

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

-- Arithmetic Operator : +, -, /, %, *
SELECT * FROM student WHERE marks+10 > 100;
SELECT * FROM student WHERE marks-10 > 80;
SELECT * FROM student WHERE marks*2 > 140;

-- Comparison operator : = , != , > , < , <= , >=
SELECT * FROM student WHERE marks >=80; 

-- Logical operator : AND, OR, BETWEEN, IN, etc
SELECT * FROM student WHERE marks>90 AND city="Mumbai";
SELECT * FROM student WHERE marks>90 OR city="Mumbai"; 
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;  -- 80 and 90 are inclusive 
SELECT * FROM student WHERE city IN ("Delhi","Mumbai","Meerut");
SELECT * FROM student WHERE city NOT IN ("Mumbai");