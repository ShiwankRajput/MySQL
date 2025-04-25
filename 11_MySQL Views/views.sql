USE college;

CREATE TABLE student2(
	roll_no INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student2
(roll_no, name, marks, grade, city)
VALUES
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

SELECT * FROM student2;

-- creating view for teacher that he/she can view all columns except city column :
CREATE VIEW view1 as
SELECT roll_no,name,marks,grade FROM student2;

DROP VIEW view1;

SELECT * FROM view1;