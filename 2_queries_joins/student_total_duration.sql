SELECT sum(duration) as total_duration
FROM assignment_submissions as asub
JOIN students as s ON asub.student_id = s.id
WHERE s.name = 'Ibrahim Schimmel';