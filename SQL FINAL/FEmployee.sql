DROP TABLE employee;
CREATE TABLE employee (
  empl_ID  integer(8),
  fname    varchar(15) not null, 
  lname    varchar(15) not null,
  minit    varchar(1),
  hired    date,
  address  varchar(50),
  ssn      varchar(9),
  job_status   varchar(15),
  d_ID      integer(3),
  primary key (empl_id),
  key(ssn),
  foreign key (d_ID) references department(dept_ID)
);

DELETE FROM employee;

INSERT INTO employee
VALUE (0, "Anderson", "Martin", "V", "1944-06-21", "2453 Jerome Ave, Bronx, NY", 000000000, "Part-Time", 1),
      (1, "Patrick", "Lewis", "T", "1944-07-23", "3564 Jerome Ave, Bronx, NY", 004069305, "Part-Time", 1),
      (2, "Albert", "Micheal", "L", "1944-07-12", "1212 Pico Drive, Boston, NY", 325059334, "Full-Time", 1),
      (3, "Bob", "James", "D", "1954-06-20", "2685 TV Road, Houston, TX", 123455678, "Full-Time", 3),
      (4, "Robert", "Andy", "U", "1945-02-21", "5314 Nofoot Lane, Houston, TX", 316632453, "Full-Time", 5),
      (5, "Mary", "Jane", "", "1955-05-21", ", 296 Nono Drive, Miami, FL", 210059305, "Full-Time", 9),
      (6, "Jone", "Karen", "H", "1925-05-03", "692 Yesyes RD, Orlando, FL", 110059305, "Full-Time", 6),
      (7, "Baron", "Janice", "P", "1999-11-01", "1234 Coconut Drive, Jacksonvile, FL", 900059305, "Full-Time", 9),
      (8, "Brenda", "Angelica", "C", "1978-10-02", "3562 Rainbow Road, Los Angelos, CA", 800059305, "Full-Time", 7),
      (9, "Alex", "Rodrigue", "T", "1979-07-21", "3568 Northwestern Blvd Phoenix, AZ", 700059305, "Full-Time", 9),
      (10, "Larry", "Smith", "J", "1989-04-14", "1864 Starry Road, Brooklyn, NY", 600059305, "Full-Time", 3),
      (11, "Larachel", "Andrews", "S", "1956-02-15", "8502 No Way, Manhattan, NY", 500059305, "Full-Time", 8),
      (12, "Larry", "Shell", "S", "1978-05-16", "724 Eats Street, Nashville, TN", 400059305, "Full-Time", 4),
      (13, "Dorothy", "Winnerfred", "R", "1969-06-17", "1945 Starry Road,Brooklyn, NY", 300059305, "Full-Time", 8),
      (14, "Justin", "Time", "A", "1970-07-19", "1953 Starry Road, Brooklyn, NY", 200059305, "Full-Time", 1),
      (15, "Chris", "Bacon", "P", "1945-12-25", "8730 No Way, Manhattan, NY", 100059305, "Full-Time", 1);
