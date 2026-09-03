DROP TABLE department;
CREATE TABLE department (
  dept_ID         integer(3),
  dname          varchar(25) not null,
  phone           varchar(11) not null, 
  chair_ID        integer(8) not null,  
  chair_date      date,
  primary key  (dept_ID),
  key (dname)
);

DELETE FROM department;

INSERT INTO department
VALUES (1, "Computer Science", "7183336664", 2, "1999-01-01"),
       (2, "Information Systems", "1234567890", 15, "1999-01-01"),
       (3, "Engineering", "0987654321", 10, "1999-01-01"),
       (4, "Data Science", "2557247331", 12, "1999-01-01"),
       (5, "Mathematics", "1680472750", 4, "1999-01-01"),
       (6, "English", 4723741069, 6, "1999-01-01"),
       (7, "Economics", 2450275937, 8, "1999-01-01"),
       (8,  "Political Science", 4770341069, 11, "1999-01-01"),
       (9, "Science", 3453569638, 7, "1999-01-01");
