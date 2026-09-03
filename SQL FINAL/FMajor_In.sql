#MAJOR_IN

DROP TABLE major_in;
CREATE TABLE major_in(
    sempl_ID     integer(8),
    mname        varchar(25),
    foreign key(sempl_ID) references student(sempl_ID),
    foreign key(mname) references major(mname)
);

DELETE FROM major_in;
INSERT INTO major_in 
VALUES
    (87654321, 'Computer Science'),
    (87654321, 'Mathematics'),
    (87654322, 'Economics'),
    (87654323, 'Computer Science'),
    (87654324, 'Economics'),
    (87654325, 'Computer Science'),
    (87654326, 'Economics'),
    (87654327, 'Biology'),
    (87654327, 'Chemistry'),
    (87654327, 'Physics'),
    (87654328, 'Biology'),
    (87654329, 'Biology'),
    (87654329, 'Chemistry'),
    (87654329, 'Physics'),
    (77654321, 'Mathematics'),
    (67654321, 'Computer Science'),
    (67654321, 'Mathematics'),
    (57654321, 'English'),
    (47654321, 'Political Science'),
    (37654321, 'Computer Science'),
    (37654322, 'Computer Science'),
    (37654323, 'Computer Science');
