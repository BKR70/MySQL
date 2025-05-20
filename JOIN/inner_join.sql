SELECT employees.name, departments.dept_name
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id;


/* look at inner_join database. */
-- Find the list of students of students enrolled in the "Python Fundamentals" course and output their details like student id, name,, and age.
SELECT S.sid, S.sname, S.age 
FROM StudentDetails S 
INNER JOIN EnrolledIn E ON S.sid = E.sid
INNER JOIN CourseDetails C ON C.cid = E.cid
WHERE C.cname = "Python Fundamentals";


--Find the list of courses where more than one student is enrolled and output the course name and count of students enrolled in that course.
SELECT C.cname, count(*) AS Total_nums
FROM StudentDetails S
INNER JOIN EnrolledIn E ON S.id = E.sid
INNER JOIN CourseDetails C ON C.cid = E.cid
GROUP BY C.cname
HAVING count(*) > 1;
