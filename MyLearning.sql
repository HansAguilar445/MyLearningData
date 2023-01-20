--CREATE DATABASE MyLearning;

CREATE TABLE Students
(
	Id int PRIMARY KEY IDENTITY(1, 1),
	LastName varchar(255),
	FirstName varchar(255)
);

CREATE TABLE Instructors
(
	Id int PRIMARY KEY IDENTITY(1, 1),
	LastName varchar(255),
	FirstName varchar(255),

);

CREATE TABLE Courses
(
	Id int PRIMARY KEY IDENTITY(1, 1),
	Name varchar(255),
);

CREATE TABLE Classrooms
(
	Id int PRIMARY KEY IDENTITY(1, 1),
	InstructorId int FOREIGN KEY REFERENCES Instructors(Id),
	StudentId int FOREIGN KEY REFERENCES Students(Id),
	CourseId int FOREIGN KEY REFERENCES Courses(Id)
);

CREATE TABLE Grades
(
	StudentId int FOREIGN KEY REFERENCES Students(Id),
	ClassId int FOREIGN KEY REFERENCES Classrooms(Id),
	Grade float,
	PRIMARY KEY (StudentId, ClassId)
);