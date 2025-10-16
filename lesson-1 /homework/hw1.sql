data are facts figures or symbols that represent information
database is an organized collecton of data that can be esily accessed managed an updated
relational database is a type of database that stores data in tables (rows and columns ) and allows relationship betwen these tables using keys (like primary key and foreign key)
table is a structure within a database thst organizes data into rows and columns - like a spreadsheet



create database schoolDB
USE SCHOOLDB;

drop table students
CREATE table students  (
studentid int  primary key,
name varchar(50),

age int
);  


sql malumotlar bazasi bilan ishlash uchun ishlatiladigan dastirlash tili
sql server dasturiy tizimd(dbms) yani microsoftkompaniySI YAARTGAN malumotlar bazasinii boshqarish tizimi

SSMS (sql server management studio)datur *(grafik unterfeys) yani sql server bilan ishlash  uchun qulay oynali dastur

drop table students
CREATE table students  (
studentid int  primary key,
name varchar(50),

age int
);  

insert into students (studentid , name ,age)
values (1, 'ali', 18);

insert into students (studentid ,name,age)
values (2, 'laylo', 21);

 insert into students (studentid,name,age)
 values (3 , 'odil', 19);
 select * from students
