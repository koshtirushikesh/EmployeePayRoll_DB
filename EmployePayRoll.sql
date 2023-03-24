--UC1 Creating The Data Base
CREATE DATABASE EmployeePayRoll_DB

USE EmployeePayRoll_DB

-- UC2 
CREATE TABLE EmployeePayRoll_Table
(
EmployeeId INT IDENTITY(1,1) PRIMARY KEY,
EmployeeName varchar(225),
EmployeeSalary INT,
StartDate Date
);

-- UC3 Insert Value 
INSERT INTO EmployeePayRoll_Table
(EmployeeName,EmployeeSalary)
VALUES
('Cristen',90000),
('Rushi','40000'),
('Shubham','80000');



-- UC4 Show All Entry
SELECT * FROM EmployeePayRoll_Table 

-- UC5 Select Salry For Perticular Person
SELECT EmployeeSalary FROM EmployeePayRoll_Table WHERE EmployeeName = 'Rushi'

-- UC6 Update Gender
ALTER TABLE EmployeePayRoll_Table ADD Gender CHAR(1)

UPDATE EmployeePayRoll_Table SET Gender = 'M' WHERE EmployeeName = 'Rushi'
UPDATE EmployeePayRoll_Table SET Gender = 'M' WHERE EmployeeName = 'Shubham'
UPDATE EmployeePayRoll_Table SET Gender = 'F' WHERE EmployeeName = 'Cristen'

--UC7 Sum,Average,Min,Max Count
SELECT Gender , SUM(EmployeeSalary) AS SumOfSalary FROM EmployeePayRoll_Table GROUP BY Gender 
SELECT Gender , AVG(EmployeeSalary) AS AvgOfSalary FROM EmployeePayRoll_Table GROUP BY Gender 
SELECT Gender , MIN(EmployeeSalary) AS MinOfSalary FROM EmployeePayRoll_Table GROUP BY Gender 
SELECT Gender , MAX(EmployeeSalary) AS MaxOfSalary FROM EmployeePayRoll_Table GROUP BY Gender 

-- UC8  