
--1

SELECT col1, col2
FROM InputTbl
GROUP BY col1, col2;



--2
If all the columns have zero values, then don’t show that row. In this case, we have to remove the 5th row while selecting data.


CREATE TABLE TestMultipleZero (
    A INT NULL,
    B INT NULL,
    C INT NULL,
    D INT NULL
);

INSERT INTO TestMultipleZero(A,B,C,D)
VALUES 
    (0,0,0,1),
    (0,0,1,0),
    (0,1,0,0),
    (1,0,0,0),
    (0,0,0,0),
    (1,1,1,0);



	select * from TestMultipleZero


	SELECT *
FROM TestMultipleZero
WHERE (COALESCE(A,0) + COALESCE(B,0) + COALESCE(C,0) + COALESCE(D,0)) <> 0;



--3

--find those  with odd ids

create table section1(id int, name varchar(20))
insert into section1 values (1, 'Been'),
       (2, 'Roma'),
       (3, 'Steven'),
       (4, 'Paulo'),
       (5, 'Genryh'),
       (6, 'Bruno'),
       (7, 'Fred'),
       (8, 'Andro')


	   SELECT *
FROM section1
WHERE id % 2 <> 0;


--4
SELECT TOP 1 *
FROM section1
ORDER BY id ASC;



--5

SELECT TOP 1 *
FROM section1
ORDER BY id DESC;






--6


SELECT *
FROM section1
WHERE name LIKE 'B%';




--7
 --Write a query to return only the rows where the code contains the literal underscore _ (not as a wildcard).

 CREATE TABLE ProductCodes (
    Code VARCHAR(20)
);

INSERT INTO ProductCodes (Code) VALUES
('X-123'),
('X_456'),
('X#789'),
('X-001'),
('X%202'),
('X_ABC'),
('X#DEF'),
('X-999');



select * from ProductCodes

SELECT *
FROM ProductCodes
WHERE Code LIKE '%\_%' ESCAPE '\';
