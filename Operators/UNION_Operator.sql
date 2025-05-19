-- Combing Names from Students and Teachers Table
SELECT name, 'Student' AS type
FROM students
UNION
SELECT name, 'Teacher' AS type
FROM teachers;

-- Combining Names with Conditions
SELECT name, 'Student' AS type
FROM students
WHERE age > 15
UNION
SELECT name, 'Teacher' AS type
FROM teachers
WHERE years_of_experience > 8;
