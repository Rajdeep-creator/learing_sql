CREATE DATABASE college;
USE college;
create TABLE students(
roll_no INT PRIMARY key,
name VARCHAR(50),
branch VARCHAR(50),
marks INT,
year INT);
INSERT INTO students (roll_no, name, branch, marks, year)
VALUES
    (1, 'Alice', 'Computer Science', 85, 2023),
    (2, 'Bob', 'Electrical Engineering', 78, 2023),
    (3, 'Charlie', 'Mechanical Engineering', 92, 2023),
    (4, 'David', 'Civil Engineering', 70, 2023),
    (5, 'Ella', 'Chemical Engineering', 88, 2023),
    (6, 'Fiona', 'Computer Science', 95, 2023),
    (7, 'George', 'Electrical Engineering', 82, 2023),
    (8, 'Hannah', 'Mechanical Engineering', 91, 2023),
    (9, 'Ian', 'Civil Engineering', 76, 2023),
    (10, 'Julia', 'Chemical Engineering', 89, 2023),
    (11, 'Eva', 'Civil Engineering', 88, 2023),
    (12, 'Frank', 'Chemical Engineering', 79, 2023),
    (13, 'Grace', 'Computer Science', 92, 2023),
    (14, 'Henry', 'Electrical Engineering', 85, 2023),
    (15, 'Isabel', 'Mechanical Engineering', 93, 2023),
    (16, 'Jack', 'Civil Engineering', 77, 2023),
    (17, 'Katie', 'Chemical Engineering', 90, 2023),
    (18, 'Liam', 'Computer Science', 94, 2023),
    (19, 'Mia', 'Electrical Engineering', 83, 2023),
    (20, 'Oliver', 'Electrical Engineering', 85, 2023);
select * from students where marks<=80;
select * from students where branch="Computer Science";
select * from students where branch IN ("Computer Science","Chemical Engineering");
select * from students where branch NOT IN  ("Computer Science","Chemical Engineering");
select * from students WHERE marks>=90 LIMIT 2;
select * from students ORDER BY marks asc;
select MAX(marks) from students;
select distinct branch from students;
select branch,name, COUNT(roll_no) FROM students GROUP BY branch,name;