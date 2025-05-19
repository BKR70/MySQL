-- Combing Names from Students and Teachers Table

SELECT name, 'Student' AS type
FROM students
UNION
SELECT name, 'Teacher' AS type
FROM teachers;