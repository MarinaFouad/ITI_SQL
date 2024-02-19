DB and Tables creation Lab

1.	Create the following database “Programatically”:
•	Database Name: SD37-Company 
•	Data File Name: SD37 -Company-Data 
•	Location: (Default path) 
•	Initial size: 10MB 
•	File Group: Primary 
•	File Growth: 10 percent 
•	Max. File Size: 50 MB 
•	Log File Name: SD3x -Company-Log 
•	Location: (Default) 
•	Initial Size: 5MB 
•	File Growth: 10 Percent 
•	Log File Max. Size: 40MB

2.	Create the following tables with all the required information and insert the required data as specified in each table using insert statements[at least two rows]:
a.	Table name: Department (Programatically)
i.	Columns: 
1.	DeptNo: int , PK.
2.	DeptName: Nvarchar(20)
a.	Why did we choose Nvarchar Data type not Nchar or varchar?
3.	Location: Nchar(2)
a.	Why did we choose Nchar data type not Nvarchar?
b.	Can we make the data type for that column as char(2)?
ii.	Table values of location should be one of the following values only (NY,DS,KW)), do what’s required to make sure that user can’t enter any different values than the prev. defined values.
iii.	Make the location column value ”NY” as a default value in case of user didn’t insert it.
b.	Create the following tables, and use Suitable data types and constraints: 
3.	Modify the tables as following:
a.	Add  TelephoneNumber column to the employee table[programmatically]
b.	drop this column[programmatically]
4.	Create the following schema and transfer the following tables to it
a.	Company  schema  
i.	Department table (Programmatically)
ii.	Employee table (visually)
5.	Delete the primary key of the Employee table. Why it will not work?
a.	Can a Primary key refer to Unique key instead of Foreign key?
6.	Insert at least 3 records (Programatically) in each table from the data shown in the above image, and the other records you can insert them Visually.
7.	Try update and Delete on the previous data.
a.	Testing Referential Integrity:
i.	Add new employee with EmpNo =11111 In the works_on table
ii.	Change the employee number 10102  to 11111  in the works on table 
iii.	Modify the employee number 10102 in the employee table to 22222.
iv.	Delete the employee with id 10102
