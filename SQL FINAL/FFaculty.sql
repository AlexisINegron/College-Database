DROP TABLE faculty;
CREATE TABLE faculty (
  fempl_ID  integer(8),
  ranks       varchar(50),
  specialization      varchar(50),
  research_interest  varchar(50),
  dID       integer(3),
  foreign key (fempl_ID) references employee(empl_ID),
  foreign key (dID) references department(dept_ID)
);

DELETE FROM faculty;

INSERT INTO faculty
VALUE
(2, 'Professor', 'Computer Science', 'Artificial Intelligence', 1),
(3, 'Associate Professor', 'Electrical Engineering', 'Renewable Energy', 3),
(4, 'Professor', 'Mathematics', 'Number Theory', 5),
(5, 'Assistant Professor', 'Biology', 'Genetics', 9),
(6, 'Associate Professor', 'English Literature', 'Asian Literature', 6),
(7, 'Professor', 'Chemistry', 'Organic Synthesis', 9),
(8, 'Professor', 'Economics', 'Behavioral Economics', 7),
(9, 'Professor', 'Physics', 'Quantum Mechanics', 9),
(10, 'Professor', 'Civil Engineering', 'Structural Engineering', 3),
(11, 'Assistant Professor', 'Political Science', 'International Relations', 8),
(12, 'Professor', 'Data Science', 'Machine Learning', 4),
(13, 'Professor', 'Political Science', '18th Century Politics', 8),
(14, 'Professor', 'Computer Science', 'Database Systems', 1),
(15, 'Professor', 'Information Systems', 'IT', 2);


