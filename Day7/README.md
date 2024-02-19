Day 7 Assignment
1.	Create an Audit table with the following structure 
ProjectNo 	UserName 	ModifiedDate 	Location_Old 	Location_New 
P1	Dbo 	2008-01-31	Cairo 	Minia 

This table will be used to audit the update trials on the PLocation column (Project table, Company DB)
Example:
If a user updated the PLocation column then the project number, user name that made that update, the date of the modification and the value of the old Location and value of the new Location will be inserted into the Audit table
Note: This process will take place only if the user updated the PLocation column
2.	Create a trigger that prevents the insertion Process for Employee table in March [Company DB].
3.	Create a trigger to prevent anyone from inserting a new record in the Department table [ITI DB]
“Print a message for user to tell him that he can’t insert a new record in that table”
4.	Create a trigger on student table after insert to add Row in Student Audit table (Server User Name , Date, Note) where note will be “[username] Insert New Row with ID=[ID Value] in table Student”
Server User Name		Date 
	Note 
		

5.	Create a trigger on student table instead of delete to add Row in Student Audit table (Server User Name, Date, Note) where note will be“[username]  try to delete Row with ID=[ID Value]”
6.	Create a stored procedure to show the number of students per department.[use ITI DB] 
7.	Create a stored procedure that will check for the number of employees in the project p1 if they are more than 3 print message to the user “'The number of employees in the project p1 is 3 or more'” if they are less display a message to the user “'The following employees work for the project p1'” in addition to the first name and last name of each one. [Company DB] 
8.	Create a stored procedure that will be used in case there is an old employee has left the project and a new one become instead of him. The procedure should take 3 parameters (old Emp. number, new Emp. Number, and the project number) and it will be used to update works_on table. [Company DB].
9.	Create a transaction with 2 save point.
10.	Try handling error using Raiserror and Try/Catch.


