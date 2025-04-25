USE college2;

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

SELECT name FROM employee
UNION
SELECT name FROM employee;

SELECT name FROM employee
UNION ALL
SELECT name FROM employee;