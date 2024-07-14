-- using ddl commands

SHOW DATABASES;
CREATE DATABASE DDL;
USE DDL;

CREATE TABLE Student
(
Roll_No INT,
First_Name VARCHAR(50),
Last_Name VARCHAR(50),
Age INT
);

INSERT INTO Student
VALUES
('1','Riya','Saxena','Amit Kumar'),
('2','Rahul','Gupta','Dev Gupta');

TRUNCATE TABLE Student;

SELECT * FROM Student;

ALTER TABLE Student ADD Father_Name VARCHAR(50), DROP Age;

RENAME TABLE Student TO Student_Details;

