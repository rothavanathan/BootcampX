SELECT  name, email, id, phone
FROM students
WHERE email NOT LIKE '%gmail%'
AND phone IS NULL;