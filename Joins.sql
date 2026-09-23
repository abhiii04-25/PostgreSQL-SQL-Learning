-- Create student table
CREATE TABLE student(
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Insert student records
INSERT INTO student (name)
VALUES
('Abhishek Sontakke'),
('Rahul Sharma'),
('Priya Patil');


-- Create marks table
CREATE TABLE marks(
    marks_id SERIAL PRIMARY KEY,
    student_id INT,
    subject VARCHAR(50),
    marks INT,
    FOREIGN KEY(student_id) REFERENCES student(student_id)
);

-- Insert marks records
INSERT INTO marks (student_id, subject, marks)
VALUES
(1, 'Python', 85),
(1, 'SQL', 78),
(1, 'Machine Learning', 88),
(2, 'Python', 76),
(2, 'SQL', 82),
(2, 'Machine Learning', 80),
(3, 'Python', 91),
(3, 'SQL', 89),
(3, 'Machine Learning', 94);


-- INNER JOIN: Show marks of Abhishek Sontakke
SELECT s.name, m.subject, m.marks 
FROM student s
JOIN marks m 
ON s.student_id = m.student_id
WHERE s.name = 'Abhishek Sontakke';


-- LEFT JOIN: Show all students and their marks
SELECT s.name, m.subject, m.marks 
FROM student s
LEFT JOIN marks m 
ON s.student_id = m.student_id;


-- RIGHT JOIN: Show all marks and matching students
SELECT s.name, m.subject, m.marks 
FROM student s
RIGHT JOIN marks m 
ON s.student_id = m.student_id;


-- FULL JOIN: Show all students and all marks
SELECT s.name, m.subject, m.marks 
FROM student s
FULL JOIN marks m 
ON s.student_id = m.student_id;


-- CROSS JOIN: Combine every student with every mark
SELECT s.name, m.subject, m.marks 
FROM student s
CROSS JOIN marks m;


-- Add a new student
INSERT INTO student (name)
VALUES
('Ansh Guraw');

-- Add another student
INSERT INTO student (name)
VALUES
('Sarthak Shrama');

-- Add marks for student ID 4
INSERT INTO marks (student_id, subject, marks)
VALUES
(4, 'Python', 85);


-- Display all students
SELECT * FROM student;

-- Display all marks
SELECT * FROM marks;
