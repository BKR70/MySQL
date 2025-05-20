SELECT employees.name, departments.dept_name
FROM employees
LEFT JOIN departments
ON employees.dept_id = departments.dept_id;


/* Look at LEFT_JOIN Database */
SELECT authors.author_name, COUNT(books.book_id) as book_count
FROM authors
LEFT JOIN book_authors ON authors.author_id = book_authors.author_id
LEFT JOIN books ON book_authors.book_id = books.book_id
GROUP BY authors.author_name;
