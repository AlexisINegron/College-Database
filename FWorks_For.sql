DROP TABLE works_for;
CREATE TABLE works_for(
    sempl_ID      integer(8),
    empl_ID       integer(7),
    
    foreign key(sempl_ID) references student(sempl_ID),
    foreign key(empl_ID) references employer(empl_ID)
);

DELETE FROM works_for;
INSERT INTO works_for 
VALUES
(87654321, 100001), -- Kevin works for John Doe
(87654322, 100002), -- Matt works for Jane Smith
(87654323, 100003), -- Matthew works for Michael Johnson
(87654324, 100004), -- Luigi works for Emily Williams
(87654325, 100005), -- Maria works for David Brown
(87654326, 100006), -- Jeralt works for Sarah Davis
(87654327, 100007), -- Tomas works for Kevin Wilson
(87654328, 100008), -- Summer works for Laura Martinez
(87654329, 100009), -- Winter works for Brian Anderson
(77654321, 100010), -- Sophia works for Jessica Taylor
(67654321, 100011), -- Lucus works for Andrew Thomas
(57654321, 100012), -- Sally works for Melissa Clark
(47654321, 100013), -- Alex works for Steven White
(37654321, 100014), -- Ivy works for Rachel Lee
(37654322, 100015); -- Lan works for Daniel Harris
