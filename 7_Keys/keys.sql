CREATE DATABASE college5;
USE college5;

CREATE TABLE department(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO department (id,name)
VALUES
(101,"EC"),
(102,"CS"); 

SELECT * FROM department;

UPDATE department
SET id=103
WHERE id=101;

SELECT * FROM department;

-- Cascading for FK -> 

-- 1) On Delete Cascade:
-- When we create a foreign key using this option, it deletes the referencing rows in the child table
-- when the referenced row is deleted in the parent table which has a primary key.

-- 2) On Update Cascade:
-- When we create a foreign key using UPDATE CASCADE the referencing rows are updated in the child
-- table when the referenced row is updated in the parent table which has a primary key.

CREATE TABLE teacher(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES department(id) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE
);

INSERT INTO teacher (id,name,dept_id)
VALUES
(101,"A","101"),
(102,"B","101"),
(103,"C","102");

SELECT * FROM teacher;

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

