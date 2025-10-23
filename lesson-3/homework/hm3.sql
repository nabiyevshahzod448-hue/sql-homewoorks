
BULK INSERT — bu SQL Server da katta hajmdagi ma’lumotlarni tashqi fayldan (odatda CSV, TXT yoki boshqa formatdagi fayl) 
tez va samarali tarzda ma’lumotlar bazasiga yuklash uchun ishlatiladigan SQL buyruq (komanda).


CSV (Comma-Separated Values) — vergul bilan ajratilgan matn fayli

TXT (Text File) — oddiy matn fayli, ko‘pincha tab yoki boshqa ajratuvchi bilan

XML (Extensible Markup Language) — strukturali ma’lumotlar formati

JSON (JavaScript Object Notation) — tuzilgan matn formatidagi ma’lumotlar



CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
);



INSERT INTO Products (ProductID, ProductName, Price) VALUES
(1, 'Laptop', 1500.00),
(2, 'Smartphone', 800.00),
(3, 'Tablet', 600.00);

select * from Products


NULL — ustun qiymati mavjud emas yoki noma’lum, ya’ni bo‘sh qiymat.

NOT NULL — ustun qiymati majburiy, hech qachon bo‘sh bo‘lishi mumkin emas.


ALTER TABLE Products
ADD CONSTRAINT UQ_ProductName UNIQUE (ProductName);



INSERT INTO Products (ProductID, ProductName, Price) VALUES (4, 'Monitor', 300.00);


ALTER TABLE Products
ADD CategoryID INT;


CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50) UNIQUE
);
select * from Categories


IDENTITY ustuni avtomatik o‘suvchi raqamlar (odatda birinchi qiymat va keyingi qiymat o‘zgarishi bilan) yaratadi.

Bu ustun avtomatik ravishda har yangi yozuv qo‘shilganda takrorlanmas noyob qiymat beradi.

Masalan, IDENTITY(1,1) — boshlanish qiymati 1, har qo‘shilganda 1 taga oshadi.




BULK INSERT Products
FROM 'C:\Data\products.txt'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);



ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories FOREIGN KEY (CategoryID)
REFERENCES Categories(CategoryID);
select * from  Products



    primary key  1 ta jadvalda faqat bitta bo‘lishi mumkin; ustun (yoki ustunlar kombinatsiyasi) bo‘sh bo‘lishi mumkin emas (NOT NULL)
	Ma’lumotlarni noyob identifikatsiya qiladi

      unique  Bir nechta UNIQUE cheklov bo‘lishi mumkin;   NULL qiymatlarni qabul qilishi mumkin (baza turiga bog‘liq)
	  Ma’lumotlar takrorlanmasligini ta’minlaydi


	  ALTER TABLE Products
    ADD CONSTRAINT CHK_Price_Positive CHECK (Price > 0);


	ALTER TABLE Products
  ADD Stock INT NOT NULL DEFAULT 0;


  SELECT ProductID, ProductName, ISNULL(Price, 0) AS Price
FROM Products;



FOREIGN KEY jadvaldagi ustunni boshqa jadvaldagi asosiy kalit (PRIMARY KEY) ustuniga bog‘laydi.

Bu ma’lumotlarning yaxlitligini ta’minlaydi: bog‘langan jadvaldagi qiymat mavjud bo‘lishi kerak.

Masalan, Products jadvalidagi CategoryID qiymati Categories jadvalidagi CategoryID bilan mos kelishi kerak.


drop table Customers
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Age INT CHECK (Age >= 18)
);

select * from Customers


drop table ExampleTable
CREATE TABLE ExampleTable (
    ID INT IDENTITY(100, 10) PRIMARY KEY,
    Data VARCHAR(50)
);

select * from  ExampleTable


CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    PRIMARY KEY (OrderID, ProductID)
);
select * from OrderDetails




SELECT ISNULL(Price, 0) FROM Products;

SELECT COALESCE(Price, DiscountPrice, 0) FROM Products;


drop table employees
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Email VARCHAR(100) UNIQUE,
    EmployeeName VARCHAR(100)
);
select * from employees




  drop table   Customers
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);


 drop table  Orders
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT
);


ALTER TABLE Orders
ADD CONSTRAINT FK_Orders_Customers FOREIGN KEY (CustomerID)
REFERENCES Customers(CustomerID)
ON DELETE CASCADE
ON UPDATE CASCADE;

select * from Customers

select * from Orders

