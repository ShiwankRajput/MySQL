USE college;

CREATE TABLE student1(
	roll_no INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student1
(roll_no, name, marks, grade, city)
VALUES
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

SELECT * FROM student1;

SELECT name,marks 
FROM student1 
WHERE marks > (SELECT avg(marks) FROM student1);

SELECT name 
FROM student1
WHERE roll_no IN 
(SELECT roll_no
FROM student1
WHERE roll_no % 2 = 0); 

SELECT max(marks)
FROM (SELECT *
FROM student1
WHERE city="Delhi") as temp;
