SELECT t.name as teacher, s.name as student, a.name as assignment, (ar.completed_at - ar.started_at) as duration
FROM assistance_requests AS ar
JOIN students AS s ON ar.student_id = s.id
JOIN teachers AS t ON ar.teacher_id = t.id
JOIN assignments AS a ON ar.assignment_id = a.id
ORDER BY duration;