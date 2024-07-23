use ddl;


CREATE TABLE Student (
StudentID INT PRIMARY KEY,
StudentName VARCHAR(10)
);

INSERT INTO Student
VALUES
(1,'John'),
(2,'Jack');

CREATE TABLE StudentNew (
StudentID INT PRIMARY KEY,
StudentName VARCHAR(10)
);

INSERT INTO StudentNew
VALUES
(4,'Priya'),
(5,'Ray');

CREATE TABLE Course (
CourseID INT PRIMARY KEY,
CourseName VARCHAR(10)
);

INSERT INTO Course
VALUES
(11,'Computers'),
(12,'Physics');

CREATE TABLE Enrollment (
StudentID INT,
CourseID INT,
PRIMARY KEY (StudentID, CourseID),
FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

INSERT INTO Enrollment
VALUES
(1,11),
(2,12);

SELECT * FROM Student
UNION
SELECT * FROM StudentNew;