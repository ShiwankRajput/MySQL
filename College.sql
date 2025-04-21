CREATE DATABASE college;

USE college;

CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

INSERT INTO student VALUES(1,"Shiwank",21);
INSERT INTO student VALUES(2,"Tarang",20);

SELECT * FROM student;