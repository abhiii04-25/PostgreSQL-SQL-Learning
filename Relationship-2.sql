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


-- Show marks of Abhishek Sontakke
SELECT 
    s.name,
    m.subject,
    m.marks 
FROM student s
JOIN marks m 
ON s.student_id = m.student_id
WHERE s.name = 'Abhishek Sontakke';
