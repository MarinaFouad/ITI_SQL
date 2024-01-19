create database SD37Company 
on primary
(
	Name='LibFile', --Logical Name
	FileName='D:\ITI-dotNet\SQL\Day 3\lab3\SD37-Company-Data.mdf',--Physical Name
	Size=10MB,
	FileGrowth=10MB,
	MaxSize=50MB
)
Log on
(
	Name='LibLog',
	FileName='D:\ITI-dotNet\SQL\Day 3\lab3\SD3x-Company-Log.ldf',--Physical Name
	Size=5MB,
	FileGrowth=10MB,
	MaxSize=40MB
)
----------------------------

use SD37Company  

create table Department 
(
[Depnum] INT primary key identity(1,1) ,
[Depname] nvarchar(20) not null ,
[location] Nchar(2) check(location='NY' OR location='DS' OR location='KY') default 'NY'
)

create table employee
(
empID INT primary key identity(1,1),
empFname nvarchar(20) not null ,
empLname nvarchar(20) not null ,
salary int unique check(salary>700 AND salary<6000),
Depnum INT,
 foreign key (Depnum) references [Department](Depnum)
)


create table project
(
projectNo int primary key identity(1,1),
projectName nvarchar(20) not null ,
budget int 
)

create table work
(
empID int  not null,
projectNo int not null,
job nvarchar(20) null ,
enterdate Date not null default getdate(),
constraint EmpProj primary key (empID,projectNo),
foreign key (empID) references [employee](empID),
 foreign key (projectNo) references [project](projectNo)
)


insert into employee (empFname,empLname,salary)
values ('mathew','smith',1000)
insert into employee (empFname,empLname,salary)
values ('john','ann',2000)
insert into employee (empFname,empLname,salary)
values ('liza','james',800)

insert into project (projectName , Budget)
values ('Apolloo',120000)
insert into project (projectName , Budget)
values ('Gimini',15000)
insert into project (projectName , Budget)
values ('Mercury',20000)

insert into work(empID,projectNo,job,enterdate)
values('1',2,'manager',getdate())
insert into work(empID,projectNo,job,enterdate)
values('2',3,'analyst',getdate())
insert into work(empID,projectNo,job,enterdate)
values('3',4,'clerk',getdate())






