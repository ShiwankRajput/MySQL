CREATE DATABASE XYZ;

USE XYZ;

CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    salary INT
);

INSERT INTO employee
(id, name, salary)
VALUES
(1,"Adam",25000),
(2,"Bob",30000),
(3,"Casey",40000);

SELECT * FROM employee;