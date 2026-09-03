DROP TABLE course_section;

CREATE TABLE course_section(
   course_ID     integer(5) not null,
   section_ID    integer(4),
   room          integer(4),
   semester      varchar(10),
   timeFrame     varchar(12),
   inst_ID       integer(8),
   
   primary key(section_ID),
   foreign key(inst_ID) references instructor(iempl_ID),
   foreign key(course_ID) references course(course_ID)
);

DELETE FROM course_section;
INSERT INTO course_section
VALUES
    (10001, 0101, 101, 'Spring', 'Morning', 2),
    (10002, 0102, 102, 'Fall', 'Afternoon', 2),
    (10003, 0103, 103, 'Spring', 'Night', 14),
    (10004, 0104, 104, 'Fall', 'Afternoon', 14),
    (10005, 0201, 105, 'Spring', 'Morning', 15),
    (10006, 0202, 106, 'Fall', 'Night', 15),
    (10007, 0301, 107, 'Spring', 'Night', 10),
    (10008, 0302, 108, 'Fall', 'Afternoon', 10),
    (10009, 0401, 109, 'Spring', 'Night', 12),
    (10010, 0402, 110, 'Fall', 'Afternoon', 12),
    (10011, 0501, 111, 'Spring', 'Morning', 4),
    (10012, 0502, 112, 'Fall', 'Morning', 4),
    (10013, 0601, 113, 'Spring', 'Afternoon', 6),
    (10014, 0602, 114, 'Fall', 'Night', 6),
    (10015, 0701, 115, 'Spring', 'Night', 8),
    (10016, 0702, 116, 'Fall', 'Afternoon', 8),
    (10017, 0801, 117, 'Spring', 'Morning', 11),
    (10018, 0802, 118, 'Fall', 'Afternoon', 11),
    (10019, 0901, 119, 'Spring', 'Morning', 9),
    (10020, 0902, 120, 'Fall', 'Night', 7),
    (10021, 0903, 121, 'Spring', 'Morning', 5);
