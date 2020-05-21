use eZWg0bfBo5;
CREATE TABLE Role (
roleId integer primary key auto_increment,
roleName text,
createdDate datetime,
modifiedDate timestamp);

CREATE TABLE  Company (
CompanyId integer primary key,
CompanyName text (64),
Location text (128),
CurrentlyWorking boolean,
JoiningDate timestamp );

Drop table Company;

CREATE TABLE  Company (
CompanyId integer primary key auto_increment,
CompanyName text (64),
Location text (128),
CurrentlyWorking boolean,
JoiningDate timestamp );

CREATE TABLE QuestionMaster (
QuestionId integer primary key auto_increment,
CreatedDate timestamp,
QuestionText text );

CREATE TABLE UserSession (
UserSessionId integer primary key auto_increment,
UserRegistrationId1 integer,
foreign key (UserRegistrationId1) references UserRegistration(UserRegistrationId),
UserRegistrationId2 integer,
foreign key (UserRegistrationId2) references UserRegistration(UserRegistrationId),
StartTime timestamp,
EndTime timestamp );

CREATE TABLE UserQuestion (
UserQuestionId integer primary key auto_increment,
UserRegistrationId integer,
foreign key (UserRegistrationId) references UserRegistration(UserRegistrationId),
QuestionId integer,
foreign key (QuestionId) references QuestionMaster(QuestionId),
UserSessionId integer,
foreign key (UserSessionId) references UserSession(UserSessionId),
IsCustom boolean,
QuestionText text,
CreatedDate timestamp);

CREATE TABLE QuestionCost (
QuestionCostId integer primary key auto_increment,
UserQuestionId integer,
foreign key (UserQuestionId) references UserQuestion(UserQuestionId),
Cost integer);

CREATE TABLE UserSessionTransaction (
UserSessionTransaction integer primary key auto_increment,
UserSessionId integer,
foreign key(UserSessionId) references UserSession(UserSessionId),
UserSessionTotalCost decimal,
IsSuccessful boolean);















