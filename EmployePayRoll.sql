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
   
-- UC7 Sum,Average,Min,Max Count
SELECT Gender , SUM(EmployeeSalary) AS SumOfSalary FROM EmployeePayRoll_Table GROUP BY Gender 
SELECT Gender , AVG(EmployeeSalary) AS AvgOfSalary FROM EmployeePayRoll_Table GROUP BY Gender 
SELECT Gender , MIN(EmployeeSalary) AS MinOfSalary FROM EmployeePayRoll_Table GROUP BY Gender 
SELECT Gender , MAX(EmployeeSalary) AS MaxOfSalary FROM EmployeePayRoll_Table GROUP BY Gender 

-- UC8 
-------------------------------------
ALTER TABLE EmployeePayRoll_Table  ADD PhoneNumber BIGINT
ALTER TABLE EmployeePayRoll_Table  ADD Address VARCHAR(50)
ALTER TABLE EmployeePayRoll_Table  ADD Department VARCHAR(50) NOT NULL

-- UC9
ALTER TABLE EmployeePayRoll_Table  ADD BasicPay INT
ALTER TABLE EmployeePayRoll_Table  ADD Deductions INT
ALTER TABLE EmployeePayRoll_Table  ADD TaxablePay INT
ALTER TABLE EmployeePayRoll_Table  ADD IncomeTax INT
ALTER TABLE EmployeePayRoll_Table  ADD NetPay INT

-- UC10
INSERT INTO EmployeePayRoll_Table (EmployeeName,EmployeeSalary,Gender,PhoneNumber,Department)
VALUES ('Terissa',200000,'F',987654321,'HR'),
('Terissa',200000,'F',987654321,'Sales')

--

CREATE TABLE Employee_Table
(
EmpId INT IDENTITY(1,1) PRIMARY KEY,
EmpName VARCHAR(30),
PhoneNumber BIGINT,
Address VARCHAR(100),
City VARCHAR(20),
State VARCHAR(20),
Gender CHAR(1),
)

SELECT * FROM Employee_Table
INSERT INTO Employee_Table (EmpId) VALUES ()

CREATE TABLE Department_Table
(
DepartmentId INT IDENTITY(1,1) PRIMARY KEY,
DepartmentName VARCHAR(30),
FOREIGN KEY (EmpId) REFERENCES Employee_Table(EmpId)
)

CREATE TABLE PayRoll_Table
(
FOREIGN KEY (EmpId) REFERENCES Employee_Table(EmpId),
BasicPay INT,
Deduction INT,
TaxablePay INT,
Tax INT,
NetPay INT
)

CREATE TABLE Company_Table
(
CompanyId INT IDENTITY(1,1) PRIMARY KEY,
CompanyName VARCHAR(30),
FOREIGN KEY (EmpId) REFERENCES Employee_Table(EmpId),
)

