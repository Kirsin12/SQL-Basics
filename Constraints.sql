-- SQL CONSTRAINTS

CREATE DATABASE constraints;
USE constraints;

-- Primary key Constraint
CREATE TABLE Employees(
EmployeeID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50)
);

-- Foreign Key Constraint
CREATE TABLE Orders 
(
OrderID INT PRIMARY KEY,
EmployeeID INT,
FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Unique Constraint
CREATE TABLE Employees (
EmployeeID INT PRIMARY KEY,
Email VARCHAR(50) UNIQUE
);

-- NOT NULL Constraint
CREATE TABLE Employees (
EmployeeID INT NOT NULL UNIQUE,
FirstName VARCHAR(50),
LastName VARCHAR(50)
);

-- Check Constraint
CREATE TABLE Orders (
OrderID INT PRIMARY KEY,
Quantity INT CHECK (Quantity > 0)
);

-- Default Constraint
CREATE TABLE Employees (
EmployeeID INT PRIMARY KEY,
Country VARCHAR(50) DEFAULT 'INDIA'
);

-- Index Constraint
CREATE INDEX idx_employee_id ON Employees (EmployeeID);

-- Composite Constraints
CREATE TABLE Registrations (
StudentID INT,
CourseID INT,
PRIMARY KEY (StudentID, CourseID)
);
