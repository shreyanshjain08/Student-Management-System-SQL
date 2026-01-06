-- 1. Fetch all students
SELECT * FROM students;

-- 2. Student-wise course details
SELECT s.name, c.course_name, e.marks
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;

-- 3. Students scoring above 80
SELECT s.name, e.marks
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
WHERE e.marks > 80;

-- 4. Average marks per course
SELECT c.course_name, AVG(e.marks) AS avg_marks
FROM courses c
JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;
