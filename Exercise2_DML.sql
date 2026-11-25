-- Exercise 2: DML
-- Data Manipulation Language
-- Insert at least three courses into the `courses` table (e.g., 'Java Programming', 'SQL Basics', 'Web Development').

USE school_management;
INSERT INTO courses(course_name,creadits)VALUES
('Java programming',8),
('SQL Basics',5),
('Web Development',10);

SELECT * FROM courses;

-- Exercise 2.2: Update Data
-- Update the credits for 'Java Programming' to a higher value.


UPDATE courses
SET creadits = 15
WHERE id = 1
AND course_name = 'Java programming';


SELECT * FROM courses;


-- Exercise 2.3: Delete Data

DELETE FROM courses
WHERE id = 3;


