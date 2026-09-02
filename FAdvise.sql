DROP TABLE advise;
CREATE TABLE advise(
   empl_ID    integer(7),
   sempl_ID   integer(8),
   foreign key(empl_ID) references faculty(fempl_ID),
   foreign key(sempl_ID) references student(sempl_ID)
   );
   
DELETE FROM advise;
INSERT INTO advise 
VALUES
    (2, 87654321),
    (4, 87654321),
    (8, 87654322),
    (2, 87654323),
    (8, 87654324),
    (2, 87654325),
    (8, 87654326),
    (5, 87654327),
    (7, 87654327),
    (9, 87654327),
    (5, 87654328),
    (9, 87654329),
    (7, 87654329),
    (9, 87654329),
    (4, 77654321),
    (2, 67654321),
    (4, 67654321),
    (6, 57654321),
    (11, 47654321),
    (2, 37654321),
    (2, 37654322),
    (2, 37654323);
    