select * from Employees
create table employees (
EmpID int primary key,
NAME varchar(50),
 salary decimal(10 ,2)
 );



 INSERT INTO Employees (EmployeeID, FirstName, LastName, Position, Salary)
VALUES (1, 'Ali', 'Karimov', 'Manager', 2500);


drop table employees
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Position VARCHAR(50),
    Salary DECIMAL(10,2)
);
 select * from  Employees




 drop table Employees
            CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Position VARCHAR(50),
    Salary DECIMAL(10,2)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Position, Salary)
VALUES
    (2, 'Dilnoza', 'Tursunova', 'Accountant', 2000),
    (3, 'Jasur', 'Abdullayev', 'Developer', 3000),
    (4, 'Madina', 'Sattorova', 'Designer', 2200);

SELECT * FROM Employees;
 


 
 UPDATE Employees
SET Salary = 7000
WHERE EmployeeID = 1;
select   * from Employees



DELETE FROM Employees
WHERE EmployeeID = 2;

select   * from Employees




    delete-Jadvaldagi ma’lumotlarni (satrlarni) o‘chirish uchun ishlatiladi.
	drop - Jadvalni butunlay o‘chiradi, ya’ni ma’lumotlari va tuzilmasi ham yo‘qoladi.
	truncATE -Jadvaldagi barcha satrlarni birdaniga o‘chiradi, lekin jadvalning tuzilmasini saqlab qoladi.



	
	ALTER TABLE Employees 
alter column name varchar (100);



ALTER TABLE Employees
ADD Department VARCHAR(50);
select * from Employees



ALTER TABLE Employees
ALTER COLUMN Salary FLOAT;




drop table Departments
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)

	
);

select * from Departments



TRUNCATE TABLE Employees;



CREATE TEMPORARY TABLE TempDepartments (
    DepartmentID INT,
    DepartmentName VARCHAR(50)
);

INSERT INTO TempDepartments (DepartmentID, DepartmentName)
VALUES
    (1, 'HR'),
    (2, 'Finance'),
    (3, 'IT'),
    (4, 'Marketing'),
    (5, 'Sales');


	INSERT INTO Departments (DepartmentID, DepartmentName)
SELECT DepartmentID, DepartmentName FROM TempDepartments;

DROP TABLE TempDepartments;





UPDATE Employees
SET Department = 'Management'
WHERE Salary > 5000;

select   * from Employees where department = 'management';





TRUNCATE TABLE Employees;



ALTER TABLE Employees
DROP COLUMN Department;



EXEC sp_rename 'Employees', 'StaffMembers';


DROP TABLE Departments;





CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    StockQuantity INT
);




INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity) VALUES
(1, 'Laptop', 'Electronics', 1200.50, 10),
(2, 'Smartphone', 'Electronics', 800.00, 25),
(3, 'Office Chair', 'Furniture', 150.75, 5),
(4, 'Coffee Mug', 'Kitchenware', 12.30, 100),
(5, 'Notebook', 'Stationery', 3.50, 200);


CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2) CHECK (Price > 0),
    StockQuantity INT
);      

select * from Products






ALTER TABLE Products
ADD StockQuantity INT DEFAULT 50;



EXEC sp_rename 'Products.Category', 'ProductCategory', 'COLUMN';



INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, StockQuantity) VALUES
(1, 'Laptop', 'Electronics', 1200.50, 50),
(2, 'Smartphone', 'Electronics', 800.00, 50),
(3, 'Office Chair', 'Furniture', 150.75, 50),
(4, 'Coffee Mug', 'Kitchenware', 12.30, 50),
(5, 'Notebook', 'Stationery', 3.50, 50);



SELECT *
INTO Products_Backup
FROM Products;





EXEC sp_rename 'Products', 'Inventory';





ALTER TABLE Inventory
alter COLUMN Price FLOAT;




ALTER TABLE Inventory
ADD ProductCode INT IDENTITY(1000, 5);



