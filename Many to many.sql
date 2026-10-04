```sql
-- ==========================================
-- 1. CREATE STUDENTS TABLE
-- ==========================================

CREATE TABLE students (
    student_id INT PRIMARY KEY,       -- Unique ID for each student
    student_name VARCHAR(100)         -- Name of the student
);


-- ==========================================
-- 2. INSERT DATA INTO STUDENTS TABLE
-- ==========================================

INSERT INTO students (student_id, student_name)
VALUES
    (1, 'Rahul'),
    (2, 'Abhi'),
    (3, 'Ansh');


-- ==========================================
-- 3. CREATE COURSES TABLE
-- ==========================================

CREATE TABLE courses (
    course_id INT PRIMARY KEY,         -- Unique ID for each course
    course_name VARCHAR(100)           -- Name of the course
);


-- ==========================================
-- 4. INSERT DATA INTO COURSES TABLE
-- ==========================================

INSERT INTO courses (course_id, course_name)
VALUES
    (101, 'Python'),
    (102, 'SQL'),
    (103, 'Power BI');


-- ==========================================
-- 5. CREATE STUDENT_COURSES TABLE
-- ==========================================
-- This is a junction/bridge table.
-- It connects students with the courses
-- they have enrolled in.

CREATE TABLE student_courses (
    student_id INT,
    course_id INT,

    -- Composite primary key:
    -- The same student cannot enroll in
    -- the same course more than once.
    PRIMARY KEY (student_id, course_id),

    -- Connect student_id with students table
    FOREIGN KEY (student_id)
        REFERENCES students(student_id),

    -- Connect course_id with courses table
    FOREIGN KEY (course_id)
        REFERENCES courses(course_id)
);


-- ==========================================
-- 6. INSERT STUDENT-COURSE RELATIONSHIPS
-- ==========================================

INSERT INTO student_courses (student_id, course_id)
VALUES
    (1, 101),   -- Rahul -> Python
    (1, 102),   -- Rahul -> SQL
    (2, 101),   -- Abhi -> Python
    (2, 103),   -- Abhi -> Power BI
    (3, 103);   -- Ansh -> Power BI


-- ==========================================
-- 7. DISPLAY ALL STUDENTS AND THEIR COURSES
-- ==========================================
-- JOIN connects the three tables:
-- student_courses -> students -> courses

SELECT
    s.student_name,
    c.course_name
FROM student_courses sc
JOIN students s
    ON sc.student_id = s.student_id
JOIN courses c
    ON sc.course_id = c.course_id;


-- ==========================================
-- 8. FIND COURSES TAKEN BY ANSH
-- ==========================================
-- We filter the result using:
-- WHERE s.student_name = 'Ansh'

SELECT
    c.course_name
FROM student_courses sc
JOIN students s
    ON sc.student_id = s.student_id
JOIN courses c
    ON sc.course_id = c.course_id
WHERE s.student_name = 'Ansh';


-- ==========================================
-- 9. DISPLAY ALL STUDENTS
-- ==========================================

SELECT *
FROM students;


-- ==========================================
-- 10. DISPLAY ALL COURSES
-- ==========================================

SELECT *
FROM courses;
```

**Important correction:** Your original second query had:

```sql
JOIN students s ON sc.course_id = s.student_id
```

That's incorrect because `course_id` should be matched with `courses.course_id`, while `student_id` should be matched with `students.student_id`.

The correct relationship is:

```sql
sc.student_id = s.student_id
```

Think of it as:

**student_courses → students** using `student_id`
**student_courses → courses** using `course_id`
