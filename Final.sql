use NSS;

SET foreign_key_checks = 0;

# Selects atttributes from the various tables
SELECT *
FROM advise;

SELECT *
FROM cheat;

SELECT *
FROM course;

SELECT *
FROM course_section;

SELECT *
FROM department;

SELECT *
FROM dept_location;

SELECT *
FROM employ_record;

SELECT *
FROM employee;

SELECT *
FROM employer;

SELECT *
FROM enroll;

SELECT *
FROM faculty;

SELECT *
FROM graduate;

SELECT *
FROM instructor;

SELECT *
FROM major;

SELECT *
FROM major_in;

SELECT *
FROM mandatory;

SELECT *
FROM prereqs;

SELECT *
FROM staff;

SELECT *
FROM student;

SELECT *
FROM works_for;

SELECT *
FROM secretary

#Simple Select statments with a simple condition

SELECT DISTINCT*
FROM advise
WHERE empl_ID = 2 OR empl_ID =5;


SELECT *
FROM cheat
WHERE course_ID =10001;

SELECT *
FROM course
WHERE dID = 9;

SELECT *
FROM course_section
WHERE semester = "fall";

SELECT *
FROM department
WHERE dept_ID =3;

SELECT *
FROM dept_location
WHERE dept_location = "Building 1";

SELECT *
FROM employ_record
WHERE empl_ID = 100001;

SELECT *
FROM employee
WHERE minit = "s";

SELECT *
FROM employer
WHERE  fname = "John";

SELECT *
FROM enroll
WHERE grade LIKE "A%";

SELECT *
FROM faculty
WHERE ranks = "Professor";

SELECT *
FROM graduate
WHERE degree = "Computer Science";

SELECT *
FROM instructor
WHERE iempl_ID = 7;

SELECT *
FROM major
WHERE mname = "biology";

SELECT *
FROM major_in
WHERE mname = "Chemistry";

SELECT *
FROM mandatory
WHERE mname = "English";

SELECT *
FROM prereqs
WHERE mname = "English";

SELECT *
FROM staff
WHERE position = "janitor";

SELECT *
FROM student
WHERE dob LIKE "2001%";

SELECT *
FROM works_for
WHERE sempl_ID LIKE "8%";

SELECT *
FROM secretary
WHERE secretary.dept_ID = 4;

# ADVANCE STATEMENTS

#Gives a students name, ID and their associated major
SELECT s.sempl_ID, fname, lname, mname
FROM student AS s, major_in AS m
WHERE s.sempl_ID = m.sempl_ID;

#Gives the name of students and their advisors
SELECT distinct s.fname, s.lname, e.fname, e.lname
FROM student as s, employee, advise as a
JOIN employee AS e ON a.empl_ID = e.empl_ID
WHERE s.sempl_ID = a.sempl_ID AND e.empl_ID =a.empl_ID;

#Selects students that are graduates  and are not im honors
SELECT student.fname, student.lname, honors
FROM student, graduate
WHERE student.sempl_ID = graduate.sempl_ID AND honors = false;


#Write a query that retrieves students who have all A letter grades.
SELECT fname, lname, enroll.*
FROM enroll, student
WHERE grade LIKE "A%" AND student.sempl_ID = enroll.sempl_ID;


#Write a query to retrieve the names of students who have not taken more than 5 courses
SELECT fname, lname, student.sempl_ID
FROM enroll, student
WHERE student.sempl_ID = enroll.sempl_ID 
GROUP BY(enroll.sempl_ID)
HAVING COUNT(*) <5;


#Write 6 update statements that update certain records based on some conditions
UPDATE graduate
SET honors = false, gpa = 3.00
WHERE sempl_ID = 37654323;

UPDATE graduate
SET honors = true, gpa = 3.45
WHERE sempl_ID =37654321;

# updates so that the student Ivy works for Rachel Lee
UPDATE works_for
SET empl_ID = 100009
WHERE sempl_ID = 37654321 AND empl_ID = 100014;

UPDATE employee
SET hired = "1950-01-01"
WHERE fname = "Anderson";

UPDATE major
SET req_credits = 134
WHERE mname = "English";

UPDATE department
SET phone = "7777777777"
WHERE dept_ID = 4;



#Write 3 statements that delete a record from a table based on some condition.

# Removes any row containing "Intro to Computer Science" and a specific date 
# this should affect 2 rows
DELETE FROM cheat
WHERE course_ID = 10001 AND cdate = "2021-09-07";

#Deletes a staff memeber containing the id "00000001"
DELETE FROM staff
WHERE staff.sempl_ID = 00000001;

# Deletes any row containing "Building 1" As a department location
DELETE FROM dept_location
WHERE dept_location = "Building 1";

#Write a query to retrieve the names of students who were caught cheating in at
#least one course.
SELECT DISTINCT student.fname, student.lname
FROM student, cheat
WHERE student.sempl_ID = cheat.sempl_ID;

#Write a query to retrieve the names of instructors who have reported most cheating incidents
SELECT DISTINCT e.fname, e.lname, e.empl_ID, count(*)
FROM instructor AS i
JOIN course_section AS cs ON i.iempl_ID = cs.inst_ID
JOIN cheat AS ch ON cs.course_ID = ch.course_ID
JOIN employee AS e ON e.empl_ID = i.iempl_ID
GROUP BY e.fname, e.lname, e.empl_ID;
        

#Write a query to retrieve the names of instructors who have never reported any cheating incidents
SELECT e.fname, e.lname, e.empl_ID
FROM instructor AS i
JOIN employee AS e ON e.empl_ID = i.iempl_ID
WHERE i.iempl_ID NOT IN (
    SELECT DISTINCT i.iempl_ID
    FROM instructor AS i
    JOIN course_section AS cs ON i.iempl_ID = cs.inst_ID
    JOIN cheat AS ch ON cs.course_ID = ch.course_ID
);

#Write a query to retrieve the name of the most recently hired instructor.
SELECT fname, lname, hired
FROM employee
WHERE empl_ID IN (
    SELECT fempl_ID
    FROM faculty
    WHERE fempl_ID IN(
		SELECT iempl_ID
        FROM instructor)
)
ORDER BY hired ASC
LIMIT 1;


#This lists the department, the department's ID and the Major they each offer
SELECT DISTINCT department.dept_ID, dname AS Department, mname AS Major
FROM (major, department)
WHERE department.dept_ID = major.dept_ID
ORDER BY department.dept_ID ASC;