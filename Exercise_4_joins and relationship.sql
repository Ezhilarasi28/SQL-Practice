-- Exercise 4.1: Inner Join

-- Write a query to display student names and their corresponding attendance status by joining the `student` and `attendance` tables.


USE school_management;

CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    attendance_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (student_id) REFERENCES student(student_id)
);

INSERT INTO attendance (student_id, attendance_date, status)
VALUES
    (201, '2026-11-25', 'Present'),
    (202, '2026-11-25', 'Absent'),
    (203, '2026-11-25', 'Present');


SELECT student.name, attendance.status
FROM student
INNER JOIN attendance
ON student.student_id = attendance.student_id;


SELECT * FROM attendance;


-- Exercise 4.2: Left Join
-- Write a query to display all students and their attendance status, including students who have no attendance records yet.


