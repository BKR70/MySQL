-- Using LEFT JOIN to find employees who are not managers
SELECT e.id, e.name
FROM employees e
LEFT JOIN managers m ON e.id = m.id
WHERE m.id IS NULL;

-- Using NOT IN
SELECT id, name
FROM employees
WHERE id NOT IN (SELECT id FROM managers);
