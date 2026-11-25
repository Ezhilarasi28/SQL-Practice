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



SELECT student.name, attendance.status, COUNT(*) AS total
FROM student
INNER JOIN attendance
ON student.student_id = attendance.student_id
GROUP BY student.student_id, student.name, attendance.status;

-- Execise 5.3: Group By with Join

-- Calculate the number of days each student has been 'Present'. Display the student's name and the count.




SELECT student.name,COUNT(DISTINCT attendance.attendance_date) AS present_days
FROM student
LEFT JOIN attendance
ON student.student_id = attendance.student_id
AND attendance.status = 'Present'
GROUP BY student.student_id, student.name;



SELECT * FROM student;





