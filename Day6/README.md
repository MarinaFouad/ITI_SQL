Day 6 Lab Assignments

 Use SD3x-Company:
1.	Create rule, that make sure that column values is "Assiut" or "Mansoura" or "Cairo" or "Alex" or "Ismalia".
a.	What's the difference between that rule, and check constraints?
2.	Apply the previous rule and default to the CityUDD user-defined datatype.
3.	Create New table Named Student, and use the new UDD on it.
a.	Make ID column and don’t make it identity.
4.	Create new sequence for the ID values of the previous table.
a.	Insert 3 records in the table using the sequence.
b.	Delete the second row of the table.
c.	Insert 2 other records using the sequnce.
d.	Can you insert another record without using the sequence? Try it!
i.	Can you do the same if it was an identity column?
e.	Can you edit the value if the ID column in any of inserted records? Try it!
i.	Can you do the same if it was an identity column?
f.	Can you use the same sequence to insert in another table?
g.	If yes, do you think that the sequence will start from its initial value in the new table and insert the same IDs that were inserted in the old table?
h.	How to skip some values from the sequence not to be inserted in the tabel? Try it.
i.	Can you do the same with Identity column?
i.	What’re the differences between Identity column and Sequence?
5.	Create a synonm for any table in your DB, and try it.

Bonus Assignments:
1.	Create New partitioned Table Students (ID, SSN, Name, Age, TelNo, City) programmatically, and:
a.	Don’t make the ID identity column.
b.	Create the table in HR schema.
c.	Make this table partitioned to 3 files groups, based on the ID Column (Create Required Data files and file groups in the DB).
d.	Make the column City of datatype "CityUDD" (That you created in previous lab).
e.	Make the column TelNo of datatype "Tel"(That you created in previous lab).
f.	Apply the default you created before to the TelNo, Name column.
g.	Can you apply the same default to the "City" column? And Why? And what's the difference between the two datatypes you created?
2.	What's wide table? And What's spare column? Explain using Demo.
3.	What’s Bulk insert? Try it.
