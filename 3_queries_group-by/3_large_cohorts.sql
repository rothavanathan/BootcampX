SELECT cohorts.name AS cohort_name, count(students.id) AS students_count
FROM cohorts
JOIN students ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students.id) >= 18
ORDER BY students_count;