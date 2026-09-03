DROP TABLE secretary;

CREATE TABLE secretary(
    sempl_ID       integer(8),
    dept_ID       integer(3),
    start_date    date,
    foreign key(sempl_ID) references employee(empl_ID),
    foreign key(dept_ID) references department(dept_ID)
);
DELETE FROM secretary;

INSERT INTO secretary
VALUES 
(0, 1, '1944-06-21'),
(1, 1, '1944-07-23'),
(2, 1, '1944-07-12'),
(3, 3, '1954-06-20'),
(4, 5, '1945-02-21'),
(5, 9, '1955-05-21'),
(6, 6, '1925-05-03'),
(7, 9, '1999-11-01'),
(8, 7, '1978-10-02'),
(9, 9, '1979-07-21'),
(10, 3, '1989-04-14'),
(11, 8, '1956-02-15'),
(12, 4, '1978-05-16'),
(13, 8, '1969-06-17'),
(14, 1, '1970-07-19'),
(15, 1, '1945-12-25');