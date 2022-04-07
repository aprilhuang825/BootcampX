SELECT sum(duration) as total_duration
FROM assignment_submissions as asub
JOIN students as s ON asub.student_id = s.id
JOIN cohorts as c ON s.cohort_id = c.id
WHERE c.name = 'FEB12';