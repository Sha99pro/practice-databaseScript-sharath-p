CREATE DATABASE IF NOT EXISTS UniversityLibrary;
USE UniversityLibrary;


CREATE TABLE departments (
                             id INT PRIMARY KEY AUTO_INCREMENT,
                             department VARCHAR(100) NOT NULL
);

CREATE TABLE library_resources (
                                   resource_id INT PRIMARY KEY AUTO_INCREMENT,
                                   books VARCHAR (100) NOT NULL,
                                   media VARCHAR(100) NOT NULL,
                                   periodicals VARCHAR(100) NOT NULL,
                                   special_formats VARCHAR(100) NOT NULL,
                                   FOREIGN KEY (department_id)
                                       REFERENCES departments(department_id)
);

CREATE TABLE course_materials (
                                  assigments VARCHAR (100),
                                  exams VARCHAR (100),
                                  lecture_notes VARCHAR (100),
                                  slides VARCHAR (100),
                                  FOREIGN KEY (department_id)
                                      REFERENCES departments(department_id)
);

SELECT *
FROM course_materials;

ALTER TABLE departments
    RENAME COLUMN department_id TO id;

INSERT INTO departments (department_id, department)
VALUES
    (1, 'Computer Science'),
    (2, 'History');

INSERT INTO library_resources
(books, media, periodicals, special_formats, resource_id)
VALUES
    ('Java Basics', 'Coding DVD', 'Technology Monthly', 'Audiobook', 1),
    ('World History', 'History DVD', 'History Today', 'Large Print', 2);

INSERT INTO course_materials
(assigments, exams, lecture_notes, slides)
VALUES
    ('Java Practice', 'Java Exam', 'Loops Notes', 'Java Slides'),
    ('History Essay', 'History Exam', 'History Notes', 'History Slides');