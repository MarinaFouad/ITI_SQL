

---1
use ITI
begin tran savePoints
	update [dbo].[Department] set [Dept_Name]='updated' where [Dept_Name]='SD'
	save tran s1

	update [dbo].[Department] set [Dept_Location]='Alex' where [Dept_Location]='Cairo'
	save tran s2

	update [dbo].[Department] set [Dept_Location]='Assiut' where [Dept_Location]='Cairo'
	rollback tran s2

commit tran
end

----2

--way to backup

backup database ITI
to disk = 'D:\ITI-dotNet\SQL\Day 8'
-----

backup database ITI
to disk = 'D:\ITI-dotNet\SQL\Day 8'
with init;

---
backup database ITI
to disk = 'D:\ITI-dotNet\SQL\Day 8'
with differential

---3


restore log ITI
from desk = 'D:\ITI-dotNet\SQL\Day 8'
with norecovery;