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

INSERT INTO Subject (subject_id, subject_name, credit) VALUES
(1, 'Lập trình C', 3),
(2, 'Cơ sở dữ liệu', 4),
(3, 'Cấu trúc dữ liệu', 3),
(4, 'Hệ điều hành', 3);

UPDATE Subject
SET credit = 5
WHERE subject_id = 2;

UPDATE Subject
SET subject_name = 'Môn học Lập trình C'
WHERE subject_id = 1;
