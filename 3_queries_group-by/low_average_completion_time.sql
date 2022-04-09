SELECT s.name as student, avg(asub.duration) as average_assignment_duration, avg(a.duration) as average_estimated_duration 
FROM students as s 
JOIN assignment_submissions as asub ON s.id = asub.student_id
JOIN assignments as a ON asub.assignment_id = a.id
WHERE s.end_date IS NULL
GROUP BY student
HAVING avg(asub.duration) < avg(a.duration)
ORDER BY average_assignment_duration;
