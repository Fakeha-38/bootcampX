SELECT cohorts.name as cohort_name, count(assignment_submissions.*) AS total_submissions 
FROM students
JOIN assignment_submissions ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohort_name 
ORDER BY count(assignment_submissions.*) DESC;
