-- Insert sample subjects
INSERT INTO subject (subject_name) VALUES 
('Mathematics'),
('English Language'),
('Science'),
('Social Studies');

-- Insert sample teachers
INSERT INTO teacher (teacher_first_name, teacher_last_name, phone, email, subject_id) VALUES
('Abigail', 'Mensah', '0241234567', 'abigail.mensah@greenfields.edu.gh', 1),
('Kwame', 'Boateng', '0249876543', 'kwame.boateng@greenfields.edu.gh', 2),
('Ama', 'Nyarko', '0201237890', 'ama.nyarko@greenfields.edu.gh', 3);

-- Insert sample classes
INSERT INTO class (class_name, teacher_id) VALUES
('Grade 6', 1),
('Grade 5', 2);

-- Insert sample students
INSERT INTO student (student_first_name, student_last_name, sex, date_of_birth, guardian_name, guardian_contact) VALUES
('Kofi', 'Owusu', 'Male', '2012-05-14', 'Mr. Owusu', '0243334444'),
('Akua', 'Mensah', 'Female', '2011-11-20', 'Mrs. Mensah', '0245556666'),
('Yaw', 'Adjei', 'Male', '2013-02-05', 'Mr. Adjei', '0247778888'),
('Esi', 'Baah', 'Female', '2012-07-10', 'Mrs. Baah', '0249990000');

-- Insert sample academic records (Term 1, 2025)
INSERT INTO academic_record (student_id, subject_id, term, academic_year, class_test_score, exam_score, grade, remarks) VALUES
(1, 1, 1, 2025, 18.5, 72.0, 'B', 'Good performance'),
(1, 2, 1, 2025, 20.0, 80.0, 'A', 'Excellent'),
(2, 1, 1, 2025, 15.0, 60.0, 'C', 'Satisfactory'),
(2, 3, 1, 2025, 22.0, 75.0, 'B', 'Good'),
(3, 1, 1, 2025, 10.0, 40.0, 'E', 'Needs improvement'),
(4, 2, 1, 2025, 23.0, 85.0, 'A', 'Excellent');

-- Insert sample attendance records
INSERT INTO attendance_record (student_id, date, status) VALUES
(1, '2025-01-10', 'Present'),
(1, '2025-01-11', 'Absent'),
(2, '2025-01-10', 'Present'),
(2, '2025-01-11', 'Present'),
(3, '2025-01-10', 'Absent'),
(3, '2025-01-11', 'Absent'),
(4, '2025-01-10', 'Present'),
(4, '2025-01-11', 'Present');

-- Insert sample fee payments
INSERT INTO fee_payment (student_id, term, academic_year, amount_due, amount_paid, payment_date, balance, payment_method) VALUES
(1, 'Term 1', 2025, 1000.00, 1000.00, '2025-01-15', 0.00, 'Cash'),
(2, 'Term 1', 2025, 1000.00, 600.00, '2025-01-16', 400.00, 'Mobile Money'),
(3, 'Term 1', 2025, 1000.00, 0.00, NULL, 1000.00, 'Not Paid'),
(4, 'Term 1', 2025, 1000.00, 1000.00, '2025-01-18', 0.00, 'Bank Transfer');
