-------1
create Rule Loc 
As @values in ('Alex' , 'Cairo' ,'Assiut' )
go
-----2
create TYPE CityUDD from Nvarchar(30) 
EXEC sp_bindrule 'Loc' , 'CityUDD'
go
-----3
create table student 
( ID int primary key ,
  city CityUDD )
go
insert into student (ID,city)
values ( 1 , 'Alex')
go
insert into student (ID,city)
values ( 2 , 'Cairo')
go
-----4
create sequence increm 
start with 1 increment by 1
go
----a
update Student
set ID = next value for increm 
go
insert into student (ID , city)
values
(next value for incID,'Alex')
go
insert into student (ID , city)
values
(next value for incID,'Assiut')
go
----b

delete from student 
where ID =2 
go
---c

insert into student (ID , city)
values
(next value for incID,'Cairo')
go
insert into student (ID , city)
values
(next value for incID,'Assiut')
go

----d
insert into student (ID , city)
values
(40,'Assiut')
go
----e
update student 
set ID=50
where ID=5
go 
----f
create table teacher 
( ID int primary key ,
  city CityUDD ) 
insert into teacher (ID , city)
values
(next value for incID,'Assiut')
go

----g
---sequence continue with the value of the iD in student table

----h
alter sequence incID restart with 80
insert into student (ID , city)
values
(next value for incID,'Cairo')
go

-----5
create synonym MySynonym
for student;

select * from MySynonym


