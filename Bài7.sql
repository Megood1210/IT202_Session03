create database session3;
use session3;

CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    email VARCHAR(100) UNIQUE
);

CREATE TABLE Subject (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL,
    credit INT NOT NULL CHECK (credit > 0)
);

CREATE TABLE Enrollment (
    student_id INT,
    subject_id INT,
    enroll_date DATE NOT NULL,

    PRIMARY KEY (student_id, subject_id),

    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (subject_id) REFERENCES Subject(subject_id)
);

CREATE TABLE Score (
    student_id INT,
    subject_id INT,
    mid_score DECIMAL(3,1) CHECK (mid_score BETWEEN 0 AND 10),
    final_score DECIMAL(3,1) CHECK (final_score BETWEEN 0 AND 10),

    PRIMARY KEY (student_id, subject_id),

    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (subject_id) REFERENCES Subject(subject_id)
);

INSERT INTO Student (student_id, full_name, date_of_birth, email)
VALUES (4, 'Phạm Văn D', '2004-09-12', 'd@gmail.com');

INSERT INTO Enrollment (student_id, subject_id, enroll_date) VALUES
(4, 1, '2025-02-01'),
(4, 2, '2025-02-01');

INSERT INTO Score (student_id, subject_id, mid_score, final_score) VALUES
(4, 1, 7.0, 8.0),
(4, 2, 6.5, 6.5);

UPDATE Score
SET final_score = 8.5
WHERE student_id = 4 AND subject_id = 2;

DELETE FROM Score
WHERE student_id = 4 AND subject_id = 2;
DELETE FROM Enrollment
WHERE student_id = 4 AND subject_id = 2;

SELECT student_id, subject_id, mid_score, final_score FROM Score;











