create database session3;
use session3;

CREATE TABLE Score (
    student_id INT,
    subject_id INT,
    mid_score DECIMAL(3,1) CHECK (mid_score BETWEEN 0 AND 10),
    final_score DECIMAL(3,1) CHECK (final_score BETWEEN 0 AND 10),

    PRIMARY KEY (student_id, subject_id),

    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (subject_id) REFERENCES Subject(subject_id)
);

INSERT INTO Score (student_id, subject_id, mid_score, final_score) VALUES
(1, 1, 7.5, 7.0),
(2, 1, 6.0, 7.5);

UPDATE Score
SET final_score = 8.5
WHERE student_id = 2 AND subject_id = 1;

SELECT * FROM Score;
SELECT *FROM Score WHERE final_score >= 8;







