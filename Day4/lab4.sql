
------------------PART 1------------------------------------
-----1
select * from [dbo].[Country]
-----2
select distinct [Language] from [dbo].[CountryLanguage]
-----3
select Name from [dbo].[Country] where  Region like '%Africa'
-----4
select Name from [dbo].[City] where Population> (2 * 10^6 )
-----5
select Name from [dbo].[Country] where indepYear between 1920 and 1990
-----6
select Name from [dbo].[Country] where indepYear = NULL
-----7
select Name from [dbo].[Country] where  GovernmentForm = 'Republic'
-----8
select Name from [dbo].[Country] where Continent='Asia' And [Population] >100*10^6
-----9
select CountryCode from [dbo].[CountryLanguage] 
where Language = 'Spanish' And isOfficial = 1
-----10
select distinct CountryCode from [dbo].[CountryLanguage] 
-----11
select sum(Population) from  [dbo].[City]
-----12
select distinct Continent , Count(Continent) from[dbo].[Country]
Group by Continent
----13
INSERT INTO [dbo].[Country] 
([Code], [Name], [Continent], [Region], [SurfaceArea], [IndepYear], [Population], [LifeExpectancy], [GNP], [GNPOld], [LocalName], [GovernmentForm], [HeadOfState], [Capital], [Code2]) 
VALUES (N'NNN', N'Mariiii', N'Europe', N'Southern Europe', 20256, 2023, 1987800, 74.9, 19756, 18202, N'Slovenija', N'Republic', N'Milan Kucan', 3212, N'S3');


INSERT INTO [dbo].[CountryLanguage] ([CountryCode], [Language], [IsOfficial], [Percentage]) 
VALUES (N'NNN', N'MFA', 0, 72.1);

INSERT INTO [dbo].[City] ([ID],[Name], [CountryCode], [District], [Population]) 
VALUES (12099, N'Maa', N'NNN', N'Kabol', 1780000);

----14

Update [dbo].[Country] 
set [LifeExpectancy] = [LifeExpectancy] + 5
where [Country].[Code] = N'NNN'


------15
DELETE FROM [dbo].[CountryLanguage] WHERE [CountryCode] = N'NNN';
DELETE FROM [dbo].[City] WHERE [CountryCode] = N'NNN';
DELETE FROM  [dbo].[Country] WHERE [Country].[Code]=N'NNN'






-----------------PART2 -------------------------------------
-----1
select [Name] from [dbo].[City]
where [City].[CountryCode] = 'EGY'
-----2
select distinct Country.[Name] from [dbo].[Country]
join [dbo].[City] on [City].[CountryCode]=[Country].[Code]
where [City].[Population]>5*10^6
-----3
select Country.[Name] from [dbo].[Country]
join [dbo].[CountryLanguage] on [CountryLanguage].[CountryCode]=[Country].[Code]
where [Language]= 'Dutch' and isOfficial = 0
----4
select Country.[Name] , [CountryLanguage].[Language]
from [dbo].[Country]
join [dbo].[CountryLanguage] on [CountryLanguage].[CountryCode]=[Country].[Code]
----5
select District from [dbo].[City] 
Group by District 
having count(District)>1

----6
select Country.[Name] , count(City.[ID])
from [dbo].[Country] join  [dbo].[City] 
on [City].[CountryCode]=[Country].[Code] 
where Country.[Continent]='Africa'
group by Country.[Name], [Country].[Code]
----7
select Country.[Name] , count([CountryLanguage].[CountryCode])
from [dbo].[Country] 
join [dbo].[CountryLanguage] 
on [CountryLanguage].[CountryCode] =[Country].[Code]
where IsOfficial = 0
group by Country.[Name]

----8
select Country.[Name] , count([CountryLanguage].[CountryCode])
from [dbo].[Country] 
join [dbo].[CountryLanguage] 
on [CountryLanguage].[CountryCode] =[Country].[Code]
where IsOfficial = 1 
group by Country.[Name]
having  count([CountryLanguage].[CountryCode])>1 

----9
select * from [dbo].[Country]
WHERE LifeExpectancy = (SELECT MIN(LifeExpectancy) FROM [dbo].[Country]);

---10
select Country.[Name] , Count([City].[CountryCode])
from [dbo].[Country] inner join [dbo].[City] 
on [City].[CountryCode]=[Country].[Code] 
where [City].[Population]>100*10^6
group by Country.[Name], [Country].[Code]

---11
select Top 1 *  from [dbo].[Country] 
inner join [dbo].[City] 
on [City].[CountryCode]=[Country].[Code] 
order by [City].[Population]  DESC


---12
create table waterResource
(ID INT primary key ,
CountryCode Char(5)
,Type NVARChar(40)
,Name NVARChar(40)) 

---13
Insert into [dbo].[waterResource] (ID , CountryCode , Type , Name)
values (1, 'EGY' , 'sea' ,'redSea')

