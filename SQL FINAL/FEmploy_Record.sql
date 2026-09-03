DROP TABLE employ_record;
CREATE TABLE employ_record(
    sempl_ID      integer(8),
    empl_ID       integer(7),
    start_date    date,
    end_date      date,
    position      varchar(20),
    
    foreign key(sempl_ID) references student(sempl_ID),
    foreign key(empl_ID) references employer(empl_ID)
);
    
DELETE FROM employ_record;
INSERT INTO employ_record 
VALUES
    (87654321, 100001, '2023-05-01', '2024-04-30', 'Software Developer'),
    (87654323, 100001, '2022-08-15', '2023-08-14', 'Software Engineer'),
    (87654325, 100001, '2023-01-01', '2024-01-01', 'Data Analyst'),
    
    (87654322, 100002, '2022-09-01', '2023-09-01', 'Financial Analyst'),
    (87654324, 100002, '2022-06-15', '2023-06-15', 'Economist'),
    (87654326, 100002, '2023-01-01', '2024-01-01', 'Market Analyst'),
    
    (87654327, 100003, '2022-05-01', '2023-05-01', 'Research Scientist'),
    (87654328, 100003, '2022-11-15', '2023-11-14', 'Lab Technician'),
    (87654329, 100003, '2023-08-01', '2024-08-01', 'Biologist');
