create schema VDB;
use VDB;

CREATE TABLE volunteer (
  empID char(8),
  fname varchar(255) not null,
  lname varchar(255) not null,
  street varchar(255),
  city varchar(255),
  state char(2),
  zipcode char(5),
  birthdate date,
  startDate date,
  training enum ('Yes', 'No'),
  hoursWorked int,
  telephone char(12),
  email varchar(255),
  emerName varchar(255),
  emerContact char(12),
  primary key (empID)
);

CREATE TABLE position (
  empID char(8),
  name varchar(255) not null,
  foreign key (empID) references volunteer (empID)
);

CREATE TABLE projPreference (
  empID char(8),
  project varchar(255) not null,
  foreign key (empID) references volunteer (empID)
);

CREATE TABLE project (
  projectID char(8),
  projName varchar(255) not null,
  notes varchar(255),
  status enum (
    'Ongoing',
    'Complete',
    'Inactive'
  ),
  department varchar(255),
  supervisor varchar(255),
  primary key (projectID)
);

CREATE TABLE location (
  projectID char(8) ,
  location varchar(255),
  foreign key (projectID) references project(projectID)
);

CREATE TABLE timeslot (
  slotID char(10),
  projectID char(8),
  startTime time,
  endTime time,
  shiftType varchar(255),
  primary key (slotID),
  foreign key (projectID) references project(projectID)
);

ALTER TABLE timeslot
drop FOREIGN KEY `timeslot_ibfk_1`;

ALTER TABLE timeslot
DROP COLUMN projectID;

CREATE TABLE shift(
  slotID char(10),
  empID char(8),
  primary key (slotID, empID),
  foreign key (slotID) references timeslot(slotID),
  foreign key (empID) references volunteer(empID)
);

CREATE TABLE worksOn (
  empID char(8),
  projectID char(8),
  signup date not null,
  primary key (empID, projectID),
  foreign key (empID) references volunteer(empID),
  foreign key (projectID) references project(projectID)
);

CREATE TABLE donor (
  donorID char(8),
  fName varchar(255),
  lName varchar(255),
  street varchar(255),
  city varchar(255),
  state char(2),
  zipcode char(5),
  notes varchar(255),
  affiliation varchar(255),
  telephone char(12),
  email varchar(255),
  -- amtDonated int,
  donorTier enum('1', '2', '3'),
  primary key (donorID)
);

CREATE TABLE donation(
  donorID char(8),
  projectID char (8),
  amount int not null,
  donateDate datetime not null,
  primary key (donorID, projectID),
  foreign key (donorID) references donor(donorID),
  foreign key (projectID) references project(projectID)
);
