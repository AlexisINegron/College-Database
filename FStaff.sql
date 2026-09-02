DROP TABLE staff;
CREATE TABLE staff(
    sempl_ID integer(8),
	position varchar(50) not null,
    foreign key (sempl_ID) references employee(empl_ID)
);

DELETE FROM staff;

INSERT INTO staff
VALUE(00000000, "Janitor"),
     (00000001, "Janitor"),
     (00000004, "Financial Aid"),
     (00000006, "Librarian");
