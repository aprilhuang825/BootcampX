SELECT s.name as student, avg(asub.duration) as average_assignment_duration 
FROM students as s 
JOIN assignment_submissions as asub 
ON s.id = asub.student_id
WHERE s.end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;
