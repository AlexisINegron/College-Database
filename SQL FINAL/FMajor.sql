#Major#
DROP TABLE major;
CREATE TABLE major(
mname        varchar(25),
req_credits  integer(3),
descr        varchar(50),
degree_type  varchar(2),
dept_ID      integer(3),
primary key(mname, degree_type),
foreign key(dept_ID) references department(dept_ID)
);

DELETE FROM major;
INSERT INTO major
VALUES ("Computer Science", 135,  "Major for Computer Science BS", "BS", 1),
       ("Computer Science", 120,  "Major for Computer Science BS", "BA", 1),
       ("Information Systems", 120, "Major for IS BS", "BS", 2),
       ("Electrical Engineering", 135, "Major for Electrical BS", "BS", 3),
       ("Civil Engineering", 136, "Major for Electrical BS", "BA", 3),
       ("Data Science", 120, "Major for Data Science BS", "BS", 4),
       ("Mathematics", 125, "Major for Math BS", "BS", 5),
       ("Mathematics", 120, "Major for Math BS", "BA", 5),
       ("English", 120, "Major for English BS", "BA", 6),
       ("Economics", 120,  "Major for Economics BS", "BA", 7),
       ("Political Science", 110, "Major for Politics BS", "BS", 8),
       ("Political Science", 120, "Major for Politics BS", "BA", 8),
       ("Biology", 120, "Major for Sciences BS", "BS", 9),
       ("Chemistry", 120, "Major for Sciences BS", "BS", 9),
       ("Physics", 120, "Major for Sciences BS", "BS", 9);
