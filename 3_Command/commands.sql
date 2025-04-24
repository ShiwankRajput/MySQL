CREATE DATABASE college1;
USE college1;

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

-- setting off to safe mode
SET SQL_SAFE_UPDATES = 0;

-- select command : 
SELECT * FROM student;
SELECT roll_no, name FROM student;
SELECT DISTINCT city FROM student;

-- update command :
UPDATE student SET grade="O" WHERE grade="A";  -- O : outstanding
UPDATE student SET marks=94 WHERE roll_no=105;
UPDATE student SET grade="A" WHERE marks BETWEEN 90 AND 100;

-- Delete command :
DELETE FROM student WHERE marks<80; 

-- alter command :
ALTER TABLE student
ADD COLUMN age INT DEFAULT 20;

ALTER TABLE student
DROP COLUMN age;

ALTER TABLE student
RENAME TO student1;

ALTER TABLE student1
CHANGE COLUMN grade grades VARCHAR(1); 

ALTER TABLE student1
MODIFY COLUMN grades VARCHAR(50);

-- truncate command :
TRUNCATE TABLE student1;


SELECT * FROM student1;