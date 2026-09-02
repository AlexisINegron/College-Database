DROP TABLE student;

CREATE TABLE student(
   sempl_ID  integer(8),
   fname     varchar(15) not null, 
   lname     varchar(15) not null,
   minit     varchar(1),
   email     varchar(25),
   phone     varchar(11),
   dob       date,
   address   varchar(50),
   ssn       char(9),
   primary key (sempl_ID),
   key(ssn)
);

DELETE FROM student;

INSERT INTO student
VALUE(87654321, "Kevin", "Ron", "S", "abcdefg@email.com", "5672931458", "2002-01-01", "3845 Cherry Grove, Brooklyn, NY", 395842048),
     (87654322, "Matt", "Harold", "P", "mattH@gmail.com", "6673531458", "2003-05-15", "3345 Cherry Grove, Brooklyn, NY", 345842048),
     (87654323, "Matthew", "Granger", "S", "akfeff@email.com", "5239205858", "2002-12-31", "7363, Park Ave, NY", 395562048),
     (87654324, "Luigi", "Warner", "S", "kmsdckmd@email.com", "1350598538", "2002-06-11", "7324 Park Ave, Manhattan, NY", 395212048),
     (87654325, "Maria", "Eddy", "S", "hello@gmail.com", "5454543563", "2002-04-01", "4704 Park Ave, Bronx, NY", 395782048),
     (87654326, "Jeralt", "Kennedy", "N", "dskmlds@email.com", "7049484944", "2002-03-12", "3584 Park Ave, Bronx, NY", 305842048),
     (87654327, "Tomas", "Dark", "A", "asdkllk@gmail.com", "0585248584", "2002-03-011", "4740 Woods Blvd, Boston, NY", 502367764),
     (87654328, "Summer", "Heat", "G", "cake@gmail.com", "2653705664", "2002-04-01", "4740, Woods Blvd, Boston, NY", 305485435),
     (87654329, "Winter", "Cold", "V", "blackdoom@gmail.com", "1234567644", "2002-11-21", "4740 Woods Blvd, Boston, NY", 103585755),
     (77654321, "Sophia", "Lewis", "N", "starmight@gmail.com", "6770544966", "2002-07-04", "1233 Coconut Drive, Jacksonvile, FL", 123345667),
     (67654321, "Lucus", "Claus", "V", "Marth@email.com", "5676945675", "2002-01-22", "1222 Coconut Drive, Jacksonvile, FL", 997753354),
     (57654321, "Sally", "Play", "Q", "pizzacrust@email.com", "5666446634", "2002-02-25", "3566 Coconut Drive, Jacksonvile, FL", 113335566),
     (47654321, "Alex", "Navia", "P", "liberty@gmail.com", "0066449925", "2002-02-28", "7384 Starry Road, Brooklyn, NY", 959595859),
     (37654321, "Ivy", "Elusia", "R", "mutual@email.com", "1133557744", "2002-09-08", "3845 Rainbow Road, Los Angelos, CA", 996644225),
     (37654322, "Lan", "Hikari", "", "digital@email.com", "3458475344", "2001-03-21", "1234 ACDC Town, Den City, Electopia", 996644298),
     (37654323, "Mayl", "Hikari", "", "network@email.com", "1133557744", "2001-12-14", "1234 ACDC Town, Den City, Electopia", 993344298);
