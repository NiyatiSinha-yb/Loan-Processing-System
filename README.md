# Loan-Processing-System

A dynamic web based Loan Application, Management system for both user and client side.
Please review the ppt file attached above to get deeper insights about the project.

View src for backend.
Visit Webcontent to view the jsp files.

Sql script is as follows:
*********************************************************************

create database testdb;
use testdb;
create table students (
ID int AUTO_INCREMENT primary key ,
FirstName varchar(30),
EmailAddress varchar(30),
Submitted_Date date,
LastName varchar(30),
MiddleName varchar(30),
DOB varchar(30),
Marital varchar(10),
ssN INTEGER,
LoanAmount INTEGER,
LoanPurpose varchar(30),
Description1 varchar(200),
Address1 varchar(100),
Address2 varchar(100),
City varchar(20),
State varchar(20),
HomePhone varchar(100),
OfficePhone varchar(100),
Mobile varchar(100),
EmployerName varchar(50),
AnnualSalary INTEGER,
EmpAddress1 varchar(50),
EmpAddress2 varchar(50),
EmpCity varchar(20),
EmpState varchar(20),
EmpPostal varchar(20),
ExperienceYear INTEGER,
PostalCode varchar(10),
ExperienceMonth INTEGER,
Designation varchar(60)
);
create table users(
ID int AUTO_INCREMENT primary key ,
First_Name varchar(30),
Last_Name varchar(30),
UserName varchar(50),
Passwords varchar(10)
)



*********************************************************************
/*
create table students (
ID int AUTO_INCREMENT primary key ,
FirstName varchar(30),
EmailAddress varchar(30),
Submitted_Date date,
LastName varchar(30),
MiddleName varchar(30),
DOB varchar(30),
Marital varchar(10),
ssN INTEGER,
LoanAmount INTEGER,
LoanPurpose varchar(30),
Description1 varchar(200),
Address1 varchar(100),
Address2 varchar(100),
City varchar(20),
State varchar(20),
HomePhone varchar(100),
OfficePhone varchar(100),
Mobile varchar(100),
EmployerName varchar(50),
AnnualSalary INTEGER,
EmpAddress1 varchar(50),
EmpAddress2 varchar(50),
EmpCity varchar(20),
EmpState varchar(20),
EmpPostal varchar(20),
ExperienceYear INTEGER,
PostalCode varchar(10),
ExperienceMonth INTEGER,
Designation varchar(60)
);
select * from students;
delete from students;
SET SQL_SAFE_UPDATES = 0;

create table users(
ID int AUTO_INCREMENT primary key ,
First_Name varchar(30),
Last_Name varchar(30),
Password varchar(10)
)
select * from users;
*/
