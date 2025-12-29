create database session2;
Use session2;

CREATE TABLE Class (
    class_id VARCHAR(10) PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL,
    class_year INT NOT NULL
);


CREATE TABLE Student (
    student_id VARCHAR(10) PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    class_id VARCHAR(10) NOT NULL,
    
    CONSTRAINT fk_student_class 
    FOREIGN KEY (class_id) REFERENCES Class(class_id)
);



