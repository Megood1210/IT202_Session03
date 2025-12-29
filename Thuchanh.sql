      
create database course_online;
use course_online;

create table students (
	student_id int primary key auto_increment,
    full_name varchar(100),
    email varchar(255),
    gender enum('male','female','other'),
    date_of_birth date,
    class_name varchar(20)
);

create table subjects (
	subject_id int primary key auto_increment,
    subject_name varchar(255),
    credit_hours int
);

create table enrollment (
	subject_id int,
    student_id int,
    semeter varchar(20),
    regist_date datetime,
    primary key (subject_id, student_id),
    foreign key (subject_id) references subjects (subject_id),
    foreign key (student_id) references students (student_id)
);

-- 1. thêm ít nhất cho thầy 5 dữ liệu cho mỗi bảng
INSERT INTO students (full_name, email, gender, date_of_birth, class_name) VALUES
('Nguyễn Văn A', 'a@gmail.com', 'male', '2004-01-10', 'CNTT1'),
('Trần Thị B', 'b@gmail.com', 'female', '2004-02-15', 'CNTT1'),
('Lê Văn C', 'c@gmail.com', 'male', '2004-03-20', 'CNTT2'),
('Phạm Thị D', 'd@gmail.com', 'female', '2004-04-25', 'CNTT2'),
('Hoàng Văn E', 'e@gmail.com', 'other', '2004-05-30', 'CNTT3');

INSERT INTO subjects (subject_name, credit_hours) VALUES
('Lập trình C', 3),
('Cơ sở dữ liệu', 3),
('Cấu trúc dữ liệu', 4),
('Lập trình Java', 3),
('Mạng máy tính', 3);

INSERT INTO enrollment (subject_id, student_id, semeter, regist_date) VALUES
(1, 1, 'HK1', NOW()),
(2, 1, 'HK1', NOW()),
(3, 2, 'HK1', NOW()),
(4, 3, 'HK2', NOW()),
(5, 4, 'HK2', NOW());

-- 2. sửa cho tên sinh viên Giỏi vào sau tên sinh --> Nguyễn Văn A --> Nguyễn văn A Giỏi
UPDATE students
SET full_name = 'Nguyễn Văn A Giỏi'
WHERE student_id = 1;

-- 3. Sửa cho môn học 'Lập trình C' --> 'Môn học lập trình C'
UPDATE subjects
SET subject_name = 'Môn học lập trình C'
WHERE subject_id = 1;

-- 4. Xóa nhưng môn học có mã 2, 3
DELETE FROM enrollment
WHERE subject_id IN (2, 3);

DELETE FROM subjects
WHERE subject_id IN (2, 3);

-- 5. Đăng ký môn học 1 cho sinh viên 2
INSERT INTO enrollment (subject_id, student_id, semeter, regist_date)
VALUES (1, 2, 'HK1', NOW());

-- 6. Hủy đăng ký môn học 1 cho sinh viên 2
DELETE FROM enrollment
WHERE subject_id = 1 AND student_id = 2;

    