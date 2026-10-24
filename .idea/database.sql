
-- Create and select the database
CREATE DATABASE IF NOT EXISTS school_db;
USE school_db;

-- Drop tables in the correct order
DROP TABLE IF EXISTS enrollments;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS students;

-- Create the students table
CREATE TABLE students (
    id INT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL
);

-- Create the courses table
CREATE TABLE courses (
    id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL
);

-- Create the enrollments table with foreign keys
CREATE TABLE enrollments (
    id INT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (course_id) REFERENCES courses(id)
);

-- Insert sample data
START TRANSACTION;

INSERT INTO students (id, student_name) VALUES
(1, 'Meghana'),
(2, 'Priya');

INSERT INTO courses (id, course_name) VALUES
(101, 'Java'),
(102, 'SQL');

INSERT INTO enrollments (id, student_id, course_id) VALUES
(1, 1, 101),
(2, 1, 102),
(3, 2, 102);

COMMIT;

-- Verify the data
SELECT * FROM students;
SELECT * FROM courses;
SELECT * FROM enrollments;
