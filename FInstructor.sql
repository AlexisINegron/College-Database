DROP TABLE instructor;
CREATE TABLE instructor (
  iempl_ID  integer(8),
  
  foreign key (iempl_ID) references faculty(fempl_ID)
);

DELETE FROM instructor;

INSERT INTO instructor
VALUE(2),
     (3),
     (4),
     (5),
     (6),
     (7),
     (8),
     (9),
     (10),
     (11),
     (12),
     (13),
     (14),
     (15);

