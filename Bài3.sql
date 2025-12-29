create database session2;
Use session2;

create table Subject(
	subject_id int auto_increment primary key,
    subject_name varchar(20) unique not null,
    credit_hours int not null CHECK (credit_hours > 0)
);
create table Student(
	student_id int auto_increment primary key,
    student_name varchar(30) unique not null
) 



