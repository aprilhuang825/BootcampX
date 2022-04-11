SELECT c.name, AVG(ar.completed_at - ar.started_at) as average_assistance_request_duration
FROM assistance_requests AS ar
JOIN students as s on ar.student_id = s.id
JOIN cohorts AS c on s.cohort_id = c.id
GROUP BY c.name
ORDER BY average_assistance_request_duration;