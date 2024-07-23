CREATE DATABASE college;
use college;
create table department(
d_id INT PRIMARY KEY,
department VARCHAR(60)
);

INSERT INTO teacher (t_id, name, dept_id, age)
VALUES (103,"bob",1,23),(104,"Ian",2,56);

INSERT INTO teacher (t_id, name, dept_id, age)
VALUES (105, 'Alice', 1, 27), (106, 'Eve', 2, 32);

create table teacher(
t_id INT PRIMARY KEY,
name VARCHAR(60),
dept_id INT,
foreign key (dept_id) references department(d_id)

);
select * from students;
ALTER TABLE students
ADD column age int NOT NULL DEFAULT 19;

UPDATE teacher 
SET age=28
WHERE t_id=101;
select * from students;

SELECT * FROM teacher INNER JOIN students ON teacher.name=students.name;
INSERT INTO teacher 
VALUES(103,"Bob",2),(104,"Ian",2);


DROP TABLE department;