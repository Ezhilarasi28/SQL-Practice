-- Exercise 5.1: Count

-- Count the total number of students in the `student` table.


USE school_management;

-- SELECT COUNT(*) AS total_students
-- FROM student;
-- using aggregation
SELECT COUNT(*) FROM student;


-- Exercise 5.2: Group By

-- Find the total number of 'Present' vs 'Absent' records in the `attendance` table.

SELECT status, COUNT(*)AS total
FROM attendance
GROUP BY status;