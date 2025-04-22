CREATE DATABASE college;

-- CREATE DATABASE IF NOT EXISTS college;
-- DROP DATABASE IF EXISTS school;

USE college;

CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

INSERT INTO student(id, name, age) VALUES(1,"Shiwank",21);
INSERT INTO student(id, name, age) VALUES(2,"Tarang",20);
-- this student(defines the order) and it is optional, but the order should be same as you have define
INSERT INTO student
(id, name, age)
VALUES
(3,"Dev",22),
(4,"Ashmit",21),
(5,"Gaurav",20);

SELECT * FROM student;

SHOW TABLES;
SHOW DATABASES;