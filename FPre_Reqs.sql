
DROP TABLE prereqs;
CREATE TABLE prereqs(
mname        varchar(25),
course_ID     integer(5) not null,
foreign key(mname) references major(mname),
foreign key(course_ID) references course(course_ID)
);

DELETE FROM prereqs;
INSERT INTO prereqs 
VALUES
('Computer Science', 10001), 
('Information Systems', 10005), # Information Systems requires Introduction to IS
('Electrical Engineering', 10007),  # Electrical E requires intro to Engineering design
('Civil Engineering', 10007), # Civil E requires intro to Engineering design
('Data Science', 10009), # Data Science requires intro to data science
('Mathematics', 10011), -- Introduction to Mathematics 
('English', 10013), -- Introduction to Literature 
('Economics', 10013), -- Economic uses Introduction to Literature
('Political Science', 10017), -- Introduction to Political Science 
('Physics', 10019), -- Introduction to Physics
('Chemistry', 10020), -- General Chemistry requires Introduction to Physics
('Biology', 10021); -- General Biology requires Introduction to Physics
