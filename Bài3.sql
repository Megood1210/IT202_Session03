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

UPDATE Student
SET email = 'newemail1@gmail.com'
WHERE student_id = 3;

UPDATE Student
SET date_of_birth = '2004-05-18'
WHERE student_id = 2;

DELETE FROM Student
WHERE student_id = 5;

SELECT * FROM Student;
