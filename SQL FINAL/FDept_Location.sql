DROP TABLE dept_location;
CREATE TABLE dept_location (
   dept_location    varchar(15),
   dept_ID          integer(3),
   primary key(dept_location, dept_ID),
   foreign key(dept_ID) references department(dept_ID)
);

DELETE FROM dept_Location;

INSERT INTO dept_location
VALUES("Marshak Hall",  1),
("Gilet Hall", 1),
("Gilet Hall", 2),
("Gilet Hall", 3),
("Gilet Hall", 4),
("Molly Hall", 5),
("Building 1", 5),
("Building 2", 6),
("Building 3", 6),
("Building 4", 7),
("Building 5", 7),
("Building 6", 8),
("Building 7", 8),
("Building 8", 9);
