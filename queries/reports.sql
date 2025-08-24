-- Get all fee defaulters
SELECT s.student_id, s.student_first_name, s.student_last_name, 
       f.term, f.academic_year, f.amount_due, f.amount_paid, f.balance
FROM student s
JOIN fee_payment f ON s.student_id = f.student_id
WHERE f.balance > 0;

-- Calculate a student's termly average
SELECT s.student_id, s.student_first_name, s.student_last_name,
       ar.term, ar.academic_year,
       AVG((ar.class_test_score + ar.exam_score) / 2) AS term_average
FROM student s
JOIN academic_record ar ON s.student_id = ar.student_id
WHERE s.student_id = 1 AND ar.term = 1 AND ar.academic_year = 2025
GROUP BY s.student_id, ar.term, ar.academic_year;

-- Get top 5 performing students for a term
SELECT s.student_id, s.student_first_name, s.student_last_name,
       AVG((ar.class_test_score + ar.exam_score) / 2) AS average_score
FROM student s
JOIN academic_record ar ON s.student_id = ar.student_id
WHERE ar.term = 1 AND ar.academic_year = 2025
GROUP BY s.student_id
ORDER BY average_score DESC
LIMIT 5;

-- Attendance summary for a student
SELECT s.student_id, s.student_first_name, s.student_last_name,
       COUNT(CASE WHEN a.status = 'Present' THEN 1 END) AS days_present,
       COUNT(CASE WHEN a.status = 'Absent' THEN 1 END) AS days_absent
FROM student s
JOIN attendance_record a ON s.student_id = a.student_id
WHERE s.student_id = 1
GROUP BY s.student_id;
