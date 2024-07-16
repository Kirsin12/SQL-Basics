use ddl;

CREATE TABLE Employee
( EmployeeID INT PRIMARY KEY,
  FirstName VARCHAR(20),
  LastName VARCHAR(20),
  Age INT
);

INSERT INTO Employee (EmployeeID, FirstName, LastName)
VALUES (1, 'John', 'Doe');

INSERT INTO Employee
VALUES 
		(2, 'Jack', 'Smith', 30),
		(3,'John','Parker',29);

UPDATE EMPLOYEE
SET Age = 31
WHERE EmployeeID = 1;

DELETE FROM Employee
WHERE EmployeeID = 1;

SELECT * FROM Employee 
WHERE Age>28;


