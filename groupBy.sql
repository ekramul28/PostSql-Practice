
CREATE TABLE students(
     student_id INT PRIMARY KEY,
     first_name VARCHAR(50),
     last_name VARCHAR(50),
     age INT,
     grade VARCHAR(5),
     course VARCHAR(100),
     email VARCHAR(100) DEFAULT NULL,
     dob DATE,
     blood_group VARCHAR(5),
     country VARCHAR(50)
)

INSERT INTO students (student_id, first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
(1, 'John', 'Doe', 20, 'A', 'Computer Science', 'john.doe@example.com', '2003-05-12', 'O+', 'USA'),
(2, 'Jane', 'Smith', 22, 'B+', 'Mechanical Engineering', 'jane.smith@example.com', '2001-03-08', 'A+', 'Canada'),
(3, 'Michael', 'Johnson', 21, 'A', 'Electrical Engineering', 'michael.johnson@example.com', '2002-11-23', 'B+', 'UK'),
(4, 'Emily', 'Davis', 19, 'A-', 'Medicine', 'emily.davis@example.com', '2004-07-17', 'O-', 'Australia'),
(5, 'Daniel', 'Miller', 23, 'B', 'Civil Engineering', '', '2000-09-25', 'AB+', 'Germany'),
(6, 'Sophia', 'Taylor', 20, 'A+', 'Data Science', 'sophia.taylor@example.com', '2003-01-10', 'B-', 'India');
DROP TABLE students;
SELECT * FROM students

SELECT country, count(*), avg(age) FROM students GROUP BY country

