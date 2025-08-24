CREATE DATABASE IF NOT EXISTS greenfields_academy;
USE greenfields_academy;

-- STUDENT TABLE
CREATE TABLE IF NOT EXISTS student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_first_name VARCHAR(100) NOT NULL,
    student_last_name VARCHAR(100) NOT NULL,
    sex ENUM('Male', 'Female') NOT NULL,
    date_of_birth DATE NOT NULL,
    guardian_name VARCHAR(100) NOT NULL,
    guardian_contact VARCHAR(15) NOT NULL
);

-- SUBJECT TABLE
CREATE TABLE IF NOT EXISTS subject (
    subject_id INT PRIMARY KEY AUTO_INCREMENT,
    subject_name VARCHAR(100) NOT NULL
);

-- TEACHER TABLE
CREATE TABLE IF NOT EXISTS teacher (
    teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    teacher_first_name VARCHAR(100) NOT NULL,
    teacher_last_name VARCHAR(100) NOT NULL,
    phone VARCHAR(15),
    email VARCHAR(100),
    subject_id INT,
    FOREIGN KEY (subject_id) REFERENCES subject(subject_id)
);

-- CLASS TABLE
CREATE TABLE IF NOT EXISTS class (
    class_id INT PRIMARY KEY AUTO_INCREMENT,
    class_name VARCHAR(50) NOT NULL,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teacher(teacher_id)
);

-- ACADEMIC RECORD TABLE
CREATE TABLE IF NOT EXISTS academic_record (
    academic_record_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    subject_id INT NOT NULL,
    term INT NOT NULL CHECK(term BETWEEN 1 AND 3),
    academic_year INT NOT NULL,
    class_test_score DECIMAL(5,2) CHECK(class_test_score BETWEEN 0 AND 100),
    exam_score DECIMAL(5,2) CHECK(exam_score BETWEEN 0 AND 100),
    grade ENUM('A','B','C','D','E','F'),
    remarks TEXT,
    FOREIGN KEY (subject_id) REFERENCES subject(subject_id),
    FOREIGN KEY (student_id) REFERENCES student(student_id)
);

-- ATTENDANCE RECORD TABLE
CREATE TABLE IF NOT EXISTS attendance_record (
    attendance_record_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    date DATE NOT NULL,
    status ENUM('Present', 'Absent') NOT NULL,
    FOREIGN KEY (student_id) REFERENCES student(student_id)
);

-- FEE PAYMENT TABLE
CREATE TABLE IF NOT EXISTS fee_payment (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    term ENUM('Term 1', 'Term 2', 'Term 3') NOT NULL,
    academic_year INT NOT NULL,
    amount_due DECIMAL(10,2) NOT NULL,
    amount_paid DECIMAL(10,2) DEFAULT 0,
    payment_date DATE,
    balance DECIMAL(10,2),
    payment_method VARCHAR(50),
    FOREIGN KEY (student_id) REFERENCES student(student_id)
);
