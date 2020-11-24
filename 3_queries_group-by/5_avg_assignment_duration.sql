SELECT name AS student, AVG(duration) as average_assignment_duration
FROM assignment_submissions
JOIN students ON students.id = assignment_submissions.student_id
WHERE end_date IS NULL
GROUP BY name
ORDER BY average_assignment_duration DESC;