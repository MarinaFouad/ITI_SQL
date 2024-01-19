
---------------------------------------------------------
----1
create type CityUDD from Nvarchar(10) 
----2
create type Tel from Nvarchar(10) not null

------3
ALTER TABLE [dbo].[Stud_Course]
ADD CONSTRAINT DF_Stud_Course_Status DEFAULT 'Not Applied' FOR grade;

------4

create view Good as
select [St_Fname],[St_Lname],[Crs_Name]
from [newschema].[Student] 
join [dbo].[Stud_Course] on [newschema].[Student].[St_Id]= [Stud_Course].[St_Id]
inner join [dbo].[Course] on [dbo].[Course].[Crs_Id]=[Stud_Course].[Crs_Id]
where grade > 50

-----5

create view studying as
select [Ins_Name] , [Dept_Name] 
from [dbo].[Instructor] 
join [dbo].[Department] on [dbo].[Instructor].[Dept_Id]=[dbo].[Department].[Dept_Id]
where [Dept_Name] in ('java' ,'SD') 

----6
create view locations as
select * from [newschema].[Student]
where [St_Address] in ('Alex' , 'Cairo')
DENY UPDATE ON V1 TO [YourUserName];

----7
create view teaching as
select [Ins_Name] as instructor_name , count([Instructor].[Ins_Id]) as Number_Of_Courses
from [dbo].[Instructor] 
join [dbo].[Course] on [Instructor].[Ins_Id]= [Course].[Ins_Id]
GROUP BY [Instructor].[Ins_Id], [Instructor].[Ins_Name]


