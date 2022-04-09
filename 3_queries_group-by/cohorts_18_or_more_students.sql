SELECT c.name as cohort_name, count(s.*) as student_count
FROM cohorts as c 
JOIN students as s
ON c.id = s.cohort_id
GROUP BY c.name
HAVING count(s.*) >= 18
ORDER BY student_count;