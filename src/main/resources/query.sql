PRAGMA
foreign_keys = ON;

-- Select all courses.
SELECT *
FROM courses;

-- Select all students.
SELECT *
FROM Students;

-- Select students older than 20.
SELECT *
FROM students
WHERE age > 20;

-- Show student names together with course names.
SELECT s.name AS student_name, c.course_name AS course_name
FROM students s
         JOIN courses c
              ON s.course_id = c.course_id;

-- Count how many students are in each course.
SELECT c.course_name AS course_name, COUNT(s.id) AS student_count
FROM courses c
         LEFT JOIN students s ON s.course_id = c.course_id
GROUP BY c.course_id;

-- Update the first students age.
UPDATE students
SET age = 26
WHERE id = 2;

-- Check the update.
SELECT *
FROM students
WHERE id = 2;

-- Move second student to a different course.
UPDATE students
SET course_id = 1
WHERE id = 2;

-- Check the update using JOIN.
SELECT *
FROM students
WHERE id = 2;

-- Delete one student.
DELETE
FROM students
WHERE id = 5;

-- Check the final result.
SELECT s.id, s.name, s.email, s.age, c.course_name
FROM students s
JOIN courses c ON s.course_id = c.course_id
ORDER BY s.id;