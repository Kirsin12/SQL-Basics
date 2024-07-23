use ddl;


CREATE TABLE Student (
StudentID INT PRIMARY KEY,
StudentName VARCHAR(10)
);

CREATE TABLE Course (
CourseID INT PRIMARY KEY,
CourseName VARCHAR(10)
);

CREATE TABLE Enrollment (
StudentID INT,
CourseID INT,
PRIMARY KEY (StudentID, CourseID),
FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

