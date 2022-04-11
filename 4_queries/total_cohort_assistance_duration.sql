SELECT c.name as cohort, SUM(ar.completed_at - ar.started_at) as total_duration
FROM assistance_requests AS ar
JOIN students as s on ar.student_id = s.id
JOIN cohorts AS c on s.cohort_id = c.id
GROUP BY c.name
ORDER BY total_duration;