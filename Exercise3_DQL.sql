-- Exercise 3: DQL
-- Data Query Language

-- Select all columns from the `student` table (assuming the table from the lecture exists).


USE school_management;

SELECT * FROM student;

SHOW TABLES;

CREATE TABLE student(
    student_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    department VARCHAR(50)
);

INSERT INTO student(student_id,name,age,department)VALUES
 (201, 'Anjali Sharma', 25, 'IT'),
 (202, 'David Andersson', 28, 'CS'),
 (203, 'Emma Johansson', 24, 'SE');

 SELECT * FROM student;



 ### Exercise 3.2: Filtering

-- Select students from the `student` table who belong to a specific `class_group`.

ALTER TABLE student
ADD COLUMN class_group VARCHAR(20);


UPDATE student 
SET class_group = 'A'
WHERE student_id = 201;

UPDATE student
SET class_group = 'B'
WHERE student_id = 202;

UPDATE student
SET class_group = 'A'
WHERE student_id = 203;

SELECT * FROM student;




SELECT * FROM student
WHERE class_group = 'A';

SELECT * FROM student;

-- Exercise 3.3: Pattern Matching

-- Find all students whose names start with the letter 'J'.


INSERT INTO student (student_id, name, age, department, class_group)
VALUES (204, 'John Svensson', 27, 'CS', 'A');

SELECT * FROM student
WHERE name LIKE 'J%';


