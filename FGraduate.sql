#GRADUATE
DROP TABLE graduate;
CREATE TABLE graduate(
    sempl_ID     integer(8),
    degree       varchar(25) not null, 
    honors       boolean,
    gradyear     integer(4),
    gpa          float(4),
    foreign key(sempl_ID) references student(sempl_ID)
);
    
DELETE FROM graduate;
INSERT INTO graduate

VALUES
    -- Computer Science Graduates
    (87654321, 'Computer Science', TRUE, 2022, 3.8),
    (87654323, 'Computer Science', FALSE, 2023, 3.5),
    (87654325, 'Computer Science', FALSE, 2024, 3.6),
    
    -- Economics Graduates
    (87654322, 'Economics', FALSE, 2022, 3.7),
    (87654324, 'Economics', TRUE, 2023, 3.9),
    (87654326, 'Economics', FALSE, 2024, 3.4),
    
    -- Biology Graduates
    (87654327, 'Biology', TRUE, 2022, 3.9),
    (87654328, 'Biology', FALSE, 2023, 3.6),
    (87654329, 'Biology', FALSE, 2024, 3.8),

(37654321, "Biology", True, 2023, 3.96),
(37654322,  "Computer Science", true, 2023, 4.00),
(37654323, "Computer Science", false, 2023, 3.95);
