-- Exercise 1: DDL
-- EXERCISE 1.1: CREATE A DATABASE

CREATE DATABASE school_management;
USE school_management;


-- Exercise 1.2: Create Tables

-- Within `school_management`, create a table named `courses` with the following columns:
-- `id`: Integer, Primary Key, Auto Increment.
--  `course_name`: VARCHAR(100), Not Null.
--  `credits`: Integer, Not Null.


CREATE TABLE courses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    credits INT NOT NULL
);