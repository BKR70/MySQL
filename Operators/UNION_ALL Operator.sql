-- 1
SELECT name FROM employees WHERE department = 'HR'
UNION ALL
SELECT name FROM employees WHERE position = 'Developer';

-- 2
SELECT name, position FROM employees WHERE department = 'HR'
UNION ALL
SELECT name, position FROM employees WHERE position = 'Developer'
ORDER BY position;
