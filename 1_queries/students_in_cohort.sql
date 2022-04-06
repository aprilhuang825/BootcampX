/* Get the names of all of the students from a single cohort. */
SELECT id, name
From students
WHERE cohort_id = 1
ORDER BY name;

/* Select the total number of students who were in the first 3 cohorts. */
SELECT COUNT(id)
From students
WHERE cohort_id IN (1, 2, 3); 

/* Get all of the students that don't have an email or phone number. */
SELECT name, id, cohort_id
From students
WHERE email IS NULL 
OR phone IS NULL; 

/* Get all of the students without a gmail.com account and a phone number. */
SELECT name, id, email, cohort_id
From students
WHERE email NOT LIKE '%@gmail.com' 
AND phone IS NULL; 

/* Get all of the students currently enrolled. */
SELECT name, id, cohort_id
From students
WHERE end_date is NULL 
ORDER BY cohort_id;  

/* Get all graduates without a linked Github account. */
SELECT name, email, phone
From students
WHERE github IS NULL
AND end_date IS NOT NULL; 