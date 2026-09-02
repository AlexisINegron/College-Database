DROP TABLE course;

CREATE TABLE course(
   course_ID     integer(5) not null,
   cname         varchar(40) not null,
   dID           integer(3),
   ccode         integer(4) not null,
   hours         integer(1),
   credits       integer(1),
   desci         varchar(100),
   mname         varchar(25),
   
   primary key(course_ID, cname, ccode),
   foreign key(mname) references major(mname),
   foreign key(dID) references department(dept_ID)
);

DELETE FROM course;

INSERT INTO course
VALUES
(10001, 'Introduction to Computer Science', 1, 1001, 3, 3, 'Fundamental concepts of computer science', 'Computer Science'),
(10002, 'Database Management Systems', 1, 1002, 4, 3, 'Design and implementation of database systems', 'Computer Science'),
(10003, 'Network Security', 1, 1003, 3, 3, 'Principles of network security and cryptography', 'Computer Science'),
(10004, 'Web Development', 1, 1004, 3, 3, 'Building dynamic websites using web technologies', 'Computer Science'),
(10005, 'Introduction to Information Systems', 2, 2001, 3, 3, 'Basic concepts and applications of information systems', 'Information Systems'),
(10006, 'Data Analysis and Visualization', 2, 2002, 4, 3, 'Methods and tools for analyzing and visualizing data', 'Information Systems'),
(10007, 'Introduction to Engineering Design', 3, 3001, 3, 3, 'Fundamentals of engineering design process', 'Civil Engineering'),
(10008, 'Mechanics and Materials', 3, 3002, 4, 3, 'Study of mechanics and materials in engineering', 'Electrical Engineering'),
(10009, 'Introduction to Data Science', 4, 4001, 3, 3, 'Overview of data science principles and techniques', 'Data Science'),
(10010, 'Machine Learning', 4, 4002, 4, 3, 'Algorithms and applications of machine learning', 'Data Science'),
(10011, 'Introduction to Mathematics', 5, 5001, 3, 3, 'Basic concepts and techniques in mathematics', 'Mathematics'),
(10012, 'Calculus I', 5, 5002, 4, 3, 'Differential calculus and its applications', 'Mathematics'),
(10013, 'Introduction to Literature', 6, 7001, 3, 3, 'Survey of major works and genres in literature', 'English'),
(10014, 'Advanced Composition', 6, 7002, 3, 3, 'Advanced writing techniques and styles', 'English'),
(10015, 'Microeconomics', 7, 8001, 3, 3, 'Principles of microeconomic analysis', 'Economics'),
(10016, 'Macroeconomics', 7, 8002, 3, 3, 'Principles of macroeconomic analysis', 'Economics'),
(10017, 'Introduction to Political Science', 8, 9001, 3, 3, 'Overview of political institutions and processes', 'Political Science'),
(10018, 'International Relations', 8, 9002, 4, 3, 'Theories and issues in international relations', 'Political Science'),
(10019, 'Introduction to Physics', 9, 10001, 3, 3, 'Basic principles and concepts in physics', 'Physics'),
(10020, 'General Chemistry', 9, 10002, 4, 3, 'Introduction to chemical principles and reactions', 'Chemistry'),
(10021, 'General Biology', 9, 10003, 4, 3, 'Basic principles and concepts in biology', 'Biology');
