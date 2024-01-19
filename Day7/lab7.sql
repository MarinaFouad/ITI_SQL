use SD37Company
go 
--1
create table audit
( projectID Nvarchar(50) primary key ,
	userName Nvarchar(50) ,
	ModifiedDate date , 
	Location_Old Nvarchar(50) ,
	Location_New Nvarchar(50)
	)



create trigger auditTrigger 
on [dbo].[project]
after update 
as 
begin
	if update(PLocation)
		begin 
	
			insert into audit ( projectID ,userName  ,ModifiedDate , Location_Old  ,Location_New )
			select 
			inserted.projectID , 'Dbo' , getdate() , deleted.PLocation , inserted.PLocation 
			from 
			inserted 
			join deleted on ( deleted.projectID = inserted.projectID) 

		end
end

---2

CREATE TRIGGER preventing 
on [dbo].[Employee]
instead of insert
as 
begin 
	
	if ( getdate() = 3 ) 
	begin
		PRINT 'You cannot insert now';
		rollback;
    end

	else 
	begin 
		insert into [dbo].[Employee] 
		select [dbo].[Employee].[enterdate] from [dbo].[Employee]
	end
end

---3

create trigger preventITIinserting
on [dbo].[Department]
for insert 
as 
	begin 
	 print 'You cannot insert now';
	end

---4
use ITI
create table SAudit (
    userName nvarchar(50),
    date getdate(),
    Note nvarchar(200)
);

create trigger insertStudent 
on [dbo].[student]
after insert
as 
begin 
	declare @userName nvarchar(50) ;
	declare @date= getdate();
	declare @Note = nvarchar(200);
	declare @SID int;
    select @SID = ID from inserted;

	@userName= 'Student1';
	@Note = @userName + 'ID =' + cast(@SID as nvarchar(50))
	insert into SAudit (userName,Note)
	values(@userName,@Note)
	
end


----5

create trigger deleteStudent 
on [dbo].[student]
instead of delete
as 
begin 
	declare @userName nvarchar(50) ;
	declare @date= getdate();
	declare @Note nvarchar(200);
	declare @SID int;
    set @SID = ID from inserted;

	set @userName= 'Student1';
	set @Note = @userName + 'try to delete ID=' + cast(@SID as nvarchar(50))
	insert into SAudit (userName,Note)
	values(@userName,@Note)
	
end


---6
use ITI;
create proc numOfStud
as
begin 
	select [dbo].[Department].[Dept_Name] as [DepartmentName],
	count([newschema].[Student].[St_Id]) as [Number]
	from [newschema].[Student]
	inner join  [dbo].[Department] on [dbo].[Department].[Dept_Id]=[newschema].[Student].[Dept_Id]
	group by [dbo].[Department].[Dept_Name]
end


---7
use [SD37Company]
create proc CheckNumEmp
as
begin 
	
	declare @Num int;
	select @Num =  count([dbo].[work].[projectNo]) 
				from [dbo].[work]
				where [dbo].[work].[projectNo]= 1
	
	if (@Num > 3)
	begin 
		print 'The number of employees in the project p1 is 3 or more'
	end
	else
	begin 
		print 'The following employees work for the project p1'
		select [dbo].[employee].[empFname] as FirstName ,
		[dbo].[employee].[empLname] as SecName
		from [dbo].[employee]
		inner join [dbo].[work] on [dbo].[work].[empID]=[dbo].[employee].[empID]
		where [dbo].[work].[projectNo]= 1

	end
end

exec  CheckNumEmp


---8

use [SD37Company]
create proc UpdateEmp (  @OldEmp int , @NewEmp int , @ProjNum int )
as
begin 
	update [dbo].[work]
	set [empID]= @NewEmp
	where [empID]= @OldEmp and [projectNo]= @ProjNum
end

exec UpdateEmp