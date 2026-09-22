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

-- Display student records
SELECT * FROM student;


-- Create student profile table
CREATE TABLE student_profile(
    student_id INT PRIMARY KEY,
    address TEXT,
    age INT,
    phone VARCHAR(50)
);

-- Add foreign key relationship
ALTER TABLE student_profile
ADD CONSTRAINT fk_student_id
FOREIGN KEY (student_id)
REFERENCES student(student_id);

-- Insert profile records
INSERT INTO student_profile (student_id, address, age, phone)
VALUES
(1, 'Nagpur, Maharashtra', 22, '9876543210'),
(2, 'Pune, Maharashtra', 23, '9123456780'),
(3, 'Mumbai, Maharashtra', 21, '9988776655');

-- Display profile records
SELECT * FROM student_profile;

-- Show matching data from both tables
SELECT 
    s.student_id,
    s.name,
    sp.address,
    sp.age,
    sp.phone
FROM student s
INNER JOIN student_profile sp
ON s.student_id = sp.student_id;
