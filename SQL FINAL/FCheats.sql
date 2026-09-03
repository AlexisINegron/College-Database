#Cheats#
DROP TABLE cheat;
CREATE TABLE cheat(
course_ID     integer(5),
sempl_ID      integer(8),
cdate         date,
descr         varchar(30),
resolve       varchar(30),

foreign key(course_ID) references course_section(course_ID),
foreign key(sempl_ID) references student(sempl_ID)

);

DELETE FROM cheat;
INSERT INTO cheat
VALUES
 (10001, 87654321, "2021-09-07", "Talked during test", "Retook the exam"),
 (10001, 87654322, "2021-09-07", "Talked during test", "Retook the exam"),
 (10002, 87654322, "2021-09-07", "Talked during test", "Retook the exam"),
 (10011, 67654321, "2021-09-07", "Copied from another student", "Failed the Course"),
 (10014, 37654321,  "2021-10-07", "Talked during test", "Retook the exam"),
 (10014, 37654322,  "2021-10-07", "Talked during test", "Retook the exam"),
 (10015, 37654321,  "2021-10-08", "Talked during test", "Retook the exam"),
 (10015, 37654322,  "2021-10-08", "Talked during test", "Retook the exam");
 

