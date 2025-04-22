CREATE DATABASE abc;

USE abc;

-- Primary key, unique and not null constraint :
CREATE TABLE temp1(
	id INT UNIQUE,
    name VARCHAR(50),
    age INT NOT NULL,
    city VARCHAR(50),
    PRIMARY KEY (id)
);

INSERT INTO 
temp1 VALUES
(1,"Shiwank",21,"Najibabad"),
(2,"Anmol",21,"Meerut");

SELECT * FROM temp1;

-- primary key can be combined for 2 or more col but uniquely identifies a row. 
CREATE TABLE temp2(
	id INT,
    name VARCHAR(50),
    age INT,
    PRIMARY KEY(id, name)
);

-- foreign key constraint :
CREATE TABLE temp3(
	cust_id INT,
    FOREIGN KEY (cust_id) references customer(id)
);
 
CREATE TABLE customer(
	id INT PRIMARY KEY
);


-- default constraint :
CREATE TABLE employee(
	id INT,
    salary INT DEFAULT 30000
);

INSERT INTO employee (id) 
VALUES 
(101),(102),(103),(104);

SELECT * FROM employee;


-- check constraint :
CREATE TABLE person(
	roll_no INT,
    city VARCHAR(50),
    age INT,
    CONSTRAINT age_city CHECK (age>=18 AND city="Delhi") 
); 

-- INSERT INTO person VALUES (1,"Delhi",18),(2,"Goa",18);   this case would be voilated as city is Goa not Delhi

INSERT INTO person 
VALUES
(1,"Delhi",18),
(2,"Delhi",18);

SELECT * FROM person;

CREATE TABLE person1(
	age INT CHECK (age>=18)
);