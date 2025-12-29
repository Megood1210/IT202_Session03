create database session3;
use session3;

CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    email VARCHAR(100) UNIQUE
);

INSERT INTO Student (student_id, full_name, date_of_birth, email) VALUES
(1, 'Nguyễn Văn A', '2004-01-15', 'a@gmail.com'),
(2, 'Trần Thị B', '2004-03-20', 'b@gmail.com'),
(3, 'Lê Văn C', '2004-06-10', 'c@gmail.com');

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

INSERT INTO Enrollment (student_id, subject_id, enroll_date) VALUES
(1, 3, '2025-01-11'),
(2, 1, '2025-01-13');

SELECT * FROM Enrollment;
SELECT *FROM Enrollment WHERE student_id = 2;
