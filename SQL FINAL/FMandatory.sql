#Mandatory Major Courses#

DROP TABLE mandatory;
CREATE TABLE mandatory(
mname        varchar(25),
course_ID     integer(5) not null,
foreign key(mname) references major(mname),
foreign key(course_ID) references course(course_ID)
);

DELETE FROM mandatory;
INSERT INTO mandatory
VALUES
('Computer Science', 10001), 
('Computer Science', 10002), 
('Computer Science', 10003), 
('Computer Science', 10004), 
('Information Systems', 10005), 
('Information Systems', 10006), 
('Electrical Engineering', 10007),  
("Civil Engineering", 10007), # Civil E requires intro to Engineering design
("Civil Engineering", 10008), # 
('Data Science', 10009), # Data Science requires intro to data science
('Data Science', 10010), # Data Science requires intro to data science
('Mathematics', 10011), -- Introduction to Mathematics 
('Mathematics', 10012), -- Introduction to Mathematics 
('English', 10013), -- Introduction to Literature 
('English', 10014), --
('Economics', 10013), -- Economic uses Introduction to Literature
('Economics', 10015), -- micro
('Economics', 10016), -- macro
('Political Science', 10017), -- Introduction to Political Science 
('Political Science', 10018), 
('Physics', 10019), -- Introduction to Physics
('Chemistry', 10020), -- General Chemistry
('Biology', 10021); -- General Biology 
