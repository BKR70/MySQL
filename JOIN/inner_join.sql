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

/*
If the name of the column on which two tables are to be joined is the same in both tables, then we can use the USING clause, which takes the joining column name as input.
*/
--Find the list of students from "IIT Hyderabad" university who have enrolled in at least one course
SELECT distinct(S.sid), S.sname, S.age
FROM StudentDetails S 
INNER JOIN EnrolledIn E USING(sid)
WHERE S.university = "IIT Hyderabad";


--Find the list of courses where at least one student is enrolled and the price of the course is greater than 4000 and output their course name, price, ratings and Student name.
SELECT C.cname, C.price, C.ratings, S.name
FROM CourseDetails C
INNER JOIN EnrolledIn E ON C.cid = E.cid
INNER JOIN studentdetails S ON E.sid = S.id
WHERE C.price > 4000;
