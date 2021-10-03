-- Create or Drop Database
DROP DATABASE IF EXISTS ex;
CREATE DATABASE ex;
-- Select Database
USE ex;

CREATE TABLE students
(
student_id 	INT		PRIMARY KEY 	AUTO_INCREMENT,
student_name 	VARCHAR(50),
address		VARCHAR(50),
email	VARCHAR(50),
classes	VARCHAR(50),
major	VARCHAR(50)
);

CREATE TABLE course_info
(
student_id INT ,
classes VARCHAR(50),
major 	varchar(50)
);

INSERT INTO students(student_id, student_name, address, email, classes, major)
VALUES 
(5, 'Armin Arlert', '633 Wall Maria', 'ArminSea@school.edu', '1025/1051', 'Corp'),
(6, 'Mikasa Ackerman', '124 Wall Maria', 'MikasaAck@school.edu', '1025/1051', 'Corp'),
(7, 'Eren Yeager', '123 Wall Maria', 'AttackTitan@school.eduu', '1025/1051', 'Corp');