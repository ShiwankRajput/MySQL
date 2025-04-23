CREATE DATABASE college2;
USE college2;

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

-- where clause : 
SELECT * FROM student WHERE marks>=80;
SELECT * FROM student WHERE marks>=80 AND city="Delhi";

-- limit clause:
SELECT * FROM student WHERE marks>=80 LIMIT 3;

-- order by clause:
SELECT * FROM student ORDER BY city ASC; 
SELECT * FROM student ORDER BY marks DESC LIMIT 3;

-- group by clause:
SELECT city FROM student GROUP BY city;
SELECT grade, max(marks) FROM student GROUP BY grade;
SELECT city, avg(marks) FROM student GROUP BY city ORDER BY avg(marks) ASC;