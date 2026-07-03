PRAGMA
foreign_keys = ON;

-- Delete students first because students depends on courses.
DELETE
FROM students;
DELETE
FROM courses;

-- TODO 1:
-- Insert 3 courses.
-- Remember:
-- course_id is a number.
-- course_name must be present.
-- credits must be greater than 0.
INSERT INTO courses(course_id, course_name, credits)
VALUES (1, 'Computer Network', 2),
       (2, 'Java Fundamentals', 5),
       (3, 'SQL and NoSQL', 3);

-- TODO 2:
-- Insert 5 students.
-- Remember:
-- id is a number.
-- name must be present.
-- email must be unique.
-- age must be 18 or older.
-- course_id must exist in the courses table.
INSERT INTO students(id, name, email, age, course_id)
VALUES (1, 'Bob Smith', 'bob@gmail.com', 19, 1),
       (2, 'Alice John', 'alicejohn@gmail.com', 18, 3),
       (3, 'Alice G', 'aliceg@gmail.com', 21, 2),
       (4, 'Diana Charles', 'diana@gmail.com', 20, 3),
       (5, 'Maria M', 'mariam@gmail.com', 18, 1);