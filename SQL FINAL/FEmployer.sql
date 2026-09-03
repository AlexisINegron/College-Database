#EMPLOYER
DROP TABLE employer;
CREATE TABLE employer(
    empl_ID       integer(7),
    fname         varchar(15) not null, 
    lname         varchar(15) not null, 
    minit         varchar(1),
    address       varchar(50),
    industry      varchar(25),
    primary key(empl_ID)
    );
    
DELETE FROM employer;
INSERT INTO employer
VALUES
    (100001, 'John', 'Doe', 'M', '123 Main St', 'Technology'),
    (100002, 'Jane', 'Smith', 'E', '456 Elm St', 'Finance'),
    (100003, 'Michael', 'Johnson', 'S', '789 Oak St', 'Healthcare'),
    (100004, 'Emily', 'Williams', 'T', '101 Maple St', 'Education'),
    (100005, 'David', 'Brown', 'L', '234 Pine St', 'Hospitality'),
    (100006, 'Sarah', 'Davis', 'A', '345 Cedar St', 'Retail'),
    (100007, 'Kevin', 'Wilson', 'B', '567 Birch St', 'Manufacturing'),
    (100008, 'Laura', 'Martinez', 'C', '678 Oakwood St', 'Automotive'),
    (100009, 'Brian', 'Anderson', 'D', '789 Willow St', 'Telecommunications'),
    (100010, 'Jessica', 'Taylor', 'E', '890 Poplar St', 'Real Estate'),
    (100011, 'Andrew', 'Thomas', 'F', '901 Elmwood St', 'Construction'),
    (100012, 'Melissa', 'Clark', 'G', '112 Pinehurst St', 'Entertainment'),
    (100013, 'Steven', 'White', 'H', '223 Rosewood St', 'Agriculture'),
    (100014, 'Rachel', 'Lee', 'I', '334 Cedarwood St', 'Fashion'),
    (100015, 'Daniel', 'Harris', 'J', '445 Maplewood St', 'Energy');
