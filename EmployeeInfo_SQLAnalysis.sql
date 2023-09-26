CREATE DATABASE EmployeeInfo

USE EmployeeInfo

CREATE TABLE EmployeeDetail
(
	EmployeeID INT PRIMARY KEY,
	FirstName VARCHAR (50),
	LastName VARCHAR(50),
	Salary INT,
	JoiningDate DATETIME,
	Department VARCHAR(50),
	Gender VARCHAR(30)
)

INSERT INTO EmployeeDetail(EmployeeID,FirstName,LastName,Salary,JoiningDate,Department,Gender)

VALUES
		(1,'Vikas','Ahlawat',600000,'2/12/2013 11:16','IT','Male'),
		(2,'nikita','Jain',530000,'2/14/2013 11:16','HR','Female'),
		(3,'Ashish','Kumar',1000000,'2/14/2013 11:16','IT','Male'),
		(4,'Nikhil','Sharma',480000,'2/15/2013 11:16','HR','Male'),
		(5,'anish','kadian',500000,'2/16/2013 11:16','Paroll','Male')

select * from  EmployeeDetail

--1) Write a query to get all employee detail from "EmployeeDetail" table

select * from  EmployeeDetail

--2) Write a query to get only "FirstName" column from "EmployeeDetail" table

SELECT FirstName FROM EmployeeDetail

--3) Write a query to get FirstName in upper case as "First Name".

SELECT UPPER(FirstName) AS [FIRST Name] FROM EmployeeDetail

--4) Write a query to get FirstName in upper case as "First Name".

SELECT UPPER(FirstName) AS [FIRST Name] FROM EmployeeDetail

--5) Write a query for combine FirstName and LastName and display it as "Name" (also include white space between first name & last name)

SELECT CONCAT(FirstName,' ',LastName) AS Name FROM EmployeeDetail

--6)Select employee detail whose name is "Vikas

SELECT * 
FROM EmployeeDetail
WHERE FirstName = 'Vikas'

--7)Get all employee detail from EmployeeDetail table whose "FirstName" start with latter 'a'.

SELECT * 
FROM EmployeeDetail
WHERE FirstName LIKE 'a%'

--8) Get all employee detail from EmployeeDetail table whose "FirstName" start with latter 'a'.

SELECT * 
FROM EmployeeDetail
WHERE FirstName LIKE 'a%'

--9.Get all employee details from EmployeeDetail table whose "FirstName" end with 'h'

SELECT * 
FROM EmployeeDetail
WHERE FirstName LIKE '%a'

--10.Get all employee detail from EmployeeDetail table whose "FirstName" start with any single character between 'a-p'

SELECT * 
FROM EmployeeDetail
WHERE FirstName LIKE '[a-p]%'

--11) Get all employee detail from EmployeeDetail table whose "FirstName" not start with any single character between 'a-p'

SELECT * 
FROM EmployeeDetail
WHERE FirstName NOT LIKE '[a-p]%'

--12) Get all employee detail from EmployeeDetail table whose "Gender" end with 'le' and contain 4 letters. The Underscore(_) Wildcard Character represents any single character

SELECT * 
FROM EmployeeDetail
WHERE Gender LIKE '__LE'

--13) Get all employee detail from EmployeeDetail table whose "FirstName" start with 'A' and contain 5 letters

SELECT * 
FROM EmployeeDetail
WHERE FirstName LIKE 'A____'

--14) Get all employee detail from EmployeeDetail table whose "FirstName" containing '%'. ex:-"Vik%as"

SELECT * 
FROM EmployeeDetail
WHERE FirstName LIKE '%[%]%'

--15) Get all unique "Department" from EmployeeDetail table

SELECT DISTINCT(Department) AS UNIQUEVALUE FROM EmployeeDetail

--16) Get the highest "Salary" from EmployeeDetail table.

SELECT MAX(Salary) AS RESULT FROM EmployeeDetail

--17) Get the lowest "Salary" from EmployeeDetail table

SELECT MIN(Salary) AS RESULT FROM EmployeeDetail

--18) Show "JoiningDate" in "dd mmm yyyy" format, ex- "15 Feb 2013

SELECT CONVERT(VARCHAR(20),JoiningDate,106) AS [DD MMM YYYY] FROM [EmployeeDetail]

--19)Show "JoiningDate" in "yyyy/mm/dd" format, ex- "2013/02/15"

SELECT CONVERT(VARCHAR(20),JoiningDate,111) AS [yyyy/mm/dd] FROM EmployeeDetail

--20)Show only time part of the "JoiningDate"

SELECT CONVERT(VARCHAR(20),JoiningDate,108) AS [ time part] FROM EmployeeDetail

--21)Get only Year part of "JoiningDate"

SELECT DATEPART (YEAR,JoiningDate) AS [YEAR] FROM EmployeeDetail

--22)Get only Month part of "JoiningDate”

SELECT DATEPART(MONTH,JoiningDate) AS MONTH FROM EmployeeDetail

--Get system date

SELECT GETDATE() AS CURRENTDATE

--24)Get UTC date.

SELECT GETUTCDATE() AS UTCDATE

--25)Get the first name, current date, joiningdate and diff between current date and joining date in months.

SELECT FirstName,GETDATE() AS CURRENTDATE, JoiningDate, DATEDIFF(MM,JoiningDate,GETDATE()) FROM EmployeeDetail

--26)Get the first name, current date, joiningdate and diff between current date and joining date in days.

SELECT FirstName,GETDATE() AS CURRENTDATE, JoiningDate, DATEDIFF(DD,JoiningDate,GETDATE()) FROM EmployeeDetail

--27) Get all employee details from EmployeeDetail table whose joining year is 2013


SELECT * FROM EmployeeDetail WHERE YEAR(joiningdate) = 2013

--OR

SELECT * FROM EmployeeDetail WHERE DATEPART(YYYY,joiningdate) = 2013

--28)Get all employee details from EmployeeDetail table whose joining month is Jan(1)

SELECT * FROM EmployeeDetail WHERE DATEPART(MM,joiningdate) = '1'

--29)Get all employee details from EmployeeDetail table whose joining date between "2013-01-01" and "2013-12-01"

SELECT * FROM EmployeeDetail WHERE joiningdate BETWEEN '2013-01-01' and '2013-12-01'

--29)Get how many employee exist in "EmployeeDetail" table

SELECT COUNT(*) FROM EmployeeDetail

--30)Select only one/top 1 record from "EmployeeDetail" table

SELECT TOP 1* FROM EmployeeDetail

--32.Select all employee detail with First name "Vikas","Ashish", and "Nikhil".

SELECT * FROM EmployeeDetail WHERE FirstName IN ('Vikas','Ashish','Nikhil')

--33.Select all employee detail with First name not in "Vikas","Ashish", and "Nikhil"

SELECT * FROM EmployeeDetail WHERE FirstName NOT IN ('Vikas','Ashish','Nikhil')

--34.Select first name from "EmployeeDetail" table after removing white spaces from right side

SELECT RTRIM(FirstName) AS RESULT FROM EmployeeDetail

--35.Select first name from "EmployeeDetail" table after removing white spaces from left side

SELECT LTRIM(FirstName) AS RESULT FROM EmployeeDetail

--36.Display first name and Gender as M/F.(if male then M, if Female then F)

SELECT FirstName,
	CASE 
		WHEN Gender = 'Male' THEN 'M'
		WHEN Gender = 'Female' THEN 'F'
	END AS GENDER
FROM EmployeeDetail

--37.Select first name from "EmployeeDetail" table prifixed with "Hello

SELECT 'Hello' + ' ' + FirstName FROM EmployeeDetail

--38.Get employee details from "EmployeeDetail" table whose Salary greater than 600000

SELECT * FROM EmployeeDetail WHERE Salary > 600000

-- 39.Get employee details from "EmployeeDetail" table whose Salary less than 700000

SELECT * FROM EmployeeDetail WHERE Salary < 700000

--40.Get employee details from "EmployeeDetail" table whose Salary between 500000 than 600000

SELECT * FROM EmployeeDetail WHERE Salary BETWEEN 500000 AND 600000

CREATE TABLE ProjectDetail
(
	ProjectdetailID INT PRIMARY   KEY,
	EmployeeDetailID INT,
	ProjectName	varchar(100)
)

INSERT INTO ProjectDetail (ProjectdetailID,EmployeeDetailID,ProjectName)

VALUES
		(1,1,'Task Track'),
		(2,1,'CLP'),
		(3,1,'Survey Management'),
		(4,2,'HR Management'),
		(5,3,'Task Track'),
		(6,3,'GRS'),
		(7,3,'DDS'),
		(8,4,'HR Management'),
		(9,6,'GL Management')

--41.Give records of ProjectDetail table

select * from ProjectDetail

--42.Write the query to get the department and department wise total(sum) salary from "EmployeeDetail" table.

SELECT Department , SUM(Salary) AS TOTAL_SALARY 
FROM EmployeeDetail
GROUP BY Department 

--43.Write the query to get the department and department wise total(sum) salary, display it in ascending order according to salary.

SELECT Department , SUM(Salary) AS TOTAL_SALARY 
FROM EmployeeDetail
GROUP BY Department 
ORDER BY TOTAL_SALARY ASC

--44.Write the query to get the department and department wise total(sum) salary, display it in descending order according to salary

SELECT Department , SUM(Salary) AS TOTAL_SALARY 
FROM EmployeeDetail
GROUP BY Department 
ORDER BY TOTAL_SALARY DESC

--45.Write the query to get the department, total no. of departments, total(sum) salary with respect to department from "EmployeeDetail" table.

SELECT Department , COUNT(Department) AS TOTAL_NO_Department,SUM(Salary) AS TOTAL_SALARY 
FROM EmployeeDetail
GROUP BY Department 

--46.Get department wise average salary from "EmployeeDetail" table order by salary ascending

SELECT Department , AVG(Salary) AS AVG_Salary
FROM EmployeeDetail
GROUP BY Department 
ORDER BY AVG_Salary ASC

--47.Get department wise maximum salary from "EmployeeDetail" table order by salary ascending

SELECT Department , MAX(Salary) AS MAX_Salary
FROM EmployeeDetail
GROUP BY Department 
ORDER BY MAX_Salary ASC

--48.Get department wise minimum salary from "EmployeeDetail" table order by salary ascending.

SELECT Department , MIN(Salary) AS MIN_Salary
FROM EmployeeDetail
GROUP BY Department 
ORDER BY MIN_Salary ASC

----49. Write down the query to fetch Project name assign to more than one

SELECT ProjectName, COUNT(*) EmployeeDetailID FROM ProjectDetail
GROUP BY ProjectName
HAVING COUNT(*) > 1

--50.Join both the table that is Employee and ProjectDetail based on some common paramter

SELECT * FROM EmployeeDetail
INNER JOIN ProjectDetail
ON EmployeeDetail.EmployeeID = ProjectDetail.EmployeeDetailID

--51.Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for those employee which have assigned project already.

SELECT CONCAT(FirstName,' ',LastName) AS [FULL_NAME],ProjectName 
FROM EmployeeDetail 
INNER JOIN ProjectDetail
ON EmployeeDetail.EmployeeID = ProjectDetail.EmployeeDetailID
ORDER BY FirstName

--52.Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for all employee even they have not assigned project.

SELECT CONCAT(FirstName,' ',LastName)AS [FULL_NAME],ProjectName 
FROM EmployeeDetail 
FULL OUTER JOIN ProjectDetail
ON EmployeeDetail.EmployeeID = ProjectDetail.EmployeeDetailID
ORDER BY FirstName

--53)Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for all employee if project is not assigned then display "-No Project Assigned"

SELECT CONCAT(FirstName,' ',LastName)AS [FULL_NAME],
CASE
	WHEN ProjectName IS NULL THEN '-No Project Assigned' ELSE ProjectName
END AS ProjectName
FROM EmployeeDetail 
FULL OUTER JOIN ProjectDetail
ON EmployeeDetail.EmployeeID = ProjectDetail.EmployeeDetailID
ORDER BY FirstName

--OR

SELECT CONCAT(FirstName,' ',LastName)AS [FULL_NAME], ISNULL(ProjectName,'-No Project Assigned') AS ProjectName
FROM EmployeeDetail 
FULL OUTER JOIN ProjectDetail
ON EmployeeDetail.EmployeeID = ProjectDetail.EmployeeDetailID
ORDER BY FirstName

--OR

SELECT CONCAT(FirstName,' ',LastName)AS [FULL_NAME], COALESCE(ProjectName,'-No Project Assigned') AS ProjectName
FROM EmployeeDetail 
FULL OUTER JOIN ProjectDetail
ON EmployeeDetail.EmployeeID = ProjectDetail.EmployeeDetailID
ORDER BY FirstName

--54.Get all project name even they have not matching any employeeid, in left table, order by firstname from "EmployeeDetail" and "ProjectDetail

SELECT FirstName,ProjectName 
FROM [EmployeeDetail] RIGHT OUTER JOIN [ProjectDetail] 
ON EmployeeID = EmployeeDetailID ORDER BY FirstName

--55.Get complete record (employeename, project name) from both tables ([EmployeeDetail],[ProjectDetail]), if no match found in any table then show NULL

SELECT CONCAT(FirstName,' ',LastName) AS [FULL_NAME], ProjectName
FROM EmployeeDetail 
FULL OUTER JOIN ProjectDetail
ON EmployeeDetail.EmployeeID = ProjectDetail.EmployeeDetailID
ORDER BY FirstName

--56.Write a query to find out the employeename who has not assigned any project, and display "No Project Assigned"( tables :- [EmployeeDetail],[ProjectDetail]).

SELECT CONCAT(FirstName,' ',LastName) AS [ProjectName] FROM [EmployeeDetail] LEFT OUTER JOIN [ProjectDetail] 
ON EmployeeID = EmployeeDetailID
WHERE ProjectName IS NULL

--OR

SELECT CONCAT(FirstName,' ',LastName),COALESCE(ProjectName,'-No Project Assigned')
AS [ProjectName] FROM [EmployeeDetail] A LEFT OUTER JOIN [ProjectDetail] B
ON A.EmployeeID = B.EmployeeDetailID
WHERE ProjectName IS NULL

--57.Write a query to find out the project name which is not assigned to any employee( tables :[EmployeeDetail],[ProjectDetail]).

SELECT ProjectName
FROM [EmployeeDetail] A FULL OUTER JOIN [ProjectDetail] B
ON A.EmployeeID = B.EmployeeDetailID 
WHERE FirstName IS NULL

--58.Write down the query to fetch EmployeeName & Project who has assign more than one project

SELECT EmployeeID, CONCAT(FirstName,' ',LastName) AS FULLNAME, ProjectName 
FROM [EmployeeDetail]  INNER JOIN [ProjectDetail] 
ON [EmployeeDetail].EmployeeID = [ProjectDetail].EmployeeDetailID
WHERE EmployeeID IN
(SELECT EmployeeDetailID FROM [ProjectDetail]
GROUP BY EmployeeDetailID
HAVING COUNT(*) > 1)

 --59.Write down the query to fetch ProjectName on which more than one employee are working along with EmployeeName

 SELECT CONCAT(FirstName,' ',LastName) AS FULLNAME, ProjectName 
FROM [EmployeeDetail]  INNER JOIN [ProjectDetail] 
ON [EmployeeDetail].EmployeeID = [ProjectDetail].EmployeeDetailID

--60.Apply Cross Join in Both the tables

SELECT * FROM EmployeeDetail CROSS JOIN ProjectDetail

CREATE TABLE FuelDetails
(ID INT PRIMARY KEY,
Fuel INT ,
[Date] DATE)

insert into FuelDetails(ID,Fuel,[Date])
values
		(1, 10,'2014-04-25 10:00:00.000'),
		(2, 9,'2014-04-25 11:00:00.000'),
		(3, 8,'2014-04-25 12:00:00.000'),
		(4, 6,'2014-04-25 13:00:00.000'),
		(5, 12,'2014-04-25 14:00:00.000'),
		(6, 11,'2014-04-25 15:00:00.000'),
		(7, 10,'2014-04-25 16:00:00.000'),
		(8, 9,'2014-04-25 17:00:00.000'),
		(9, 8,'2014-04-25 18:00:00.000'),
		(10, 10,'2014-04-25 19:00:00.000'),
		(11, 9,'2014-04-25 20:00:00.000'),
		(12, 8,'2014-04-25 21:00:00.000'),
		(13, 7,'2014-04-25 22:00:00.000'),
		(14, 15,'2014-04-25 23:00:00.000')


--1.Write down the query to print first letter of a Name in Upper Case and all other letter in Lower Case.(EmployDetail table)

select CONCAT
			(UPPER(SUBSTRING(FirstName,1,1)),
			LOWER(SUBSTRING(FirstName,2,LEN(FirstName)))) as fname,
		CONCAT
			(UPPER(SUBSTRING(LastName,1,1)),
			LOWER(SUBSTRING(LastName,2,LEN(LastName)))) as lname
from EmployeeDetail

--OR

SELECT CONCAT(UPPER(SUBSTRING(FirstName,1,1))+LOWER(SUBSTRING(FirstName,2,LEN(FirstName))),'      ',
(UPPER(SUBSTRING(LastName,1,1))+LOWER(SUBSTRING(LastName,2,LEN(LastName)))))
from EmployeeDetail





--2. Write down the query to display all employee name in one cell seprated by ',' ex:-"Vikas, nikita, Ashish, Nikhil , anish"(EmployDetail table)
SELECT STRING_AGG(FirstName,',') AS employeeName
from EmployeeDetail
--OR
SELECT STUFF(( SELECT ',
' + E.FirstName FROM [EmployeeDetail] AS E FOR XML PATH('')), 1, 2, '') AS [All Emp Name]

--3.Write down the query to get ProjectName and respective EmployeeName(firstname) which are working on the project, --if more then one employee working on same project, then it should be in same cell seprated by comma 
--for example :- Task Tracker : Vikas, Ashish

SELECT ProjectName,STRING_AGG(FirstName,',') FROM EmployeeDetail 
INNER JOIN ProjectDetail 
ON EmployeeDetail.EmployeeID = ProjectDetail.EmployeeDetailID
GROUP BY ProjectName

--OR


SELECT ProjectName, STUFF((SELECT ', ' + FirstName FROM EmployeeDetail
E1 INNER JOIN [ProjectDetail] P1 ON E1.EmployeeID = P1.EmployeeDetailID
WHERE P1.ProjectName = P2.ProjectName FOR XML PATH('')),1,2,'' ) AS [Employee
Name] FROM EmployeeDetail E2
INNER JOIN [ProjectDetail] P2 ON E2.EmployeeID = P2.EmployeeDetailID
GROUP BY ProjectName

SELECT c1.fuel AS [Fuel quantity Now],c1.[Date],c.fuel AS [FuelBEFORE],c.[Date]
FROM FuelDetails c
JOIN
FuelDetails
c1 ON c1.[Date] =(SELECT MIN([Date]) FROM FuelDetails WHERE [Date]>c.[Date])
WHERE c1.fuel>c.fuel

--1) How to select random record form a table?

SELECT * FROM tablename ORDER BY RAND();

--2)Suppose that you have table Employee with a column EName which contain Records Employee name(EName) as A,B,A,A,B,D,C,M,A, Write a query which will change/Swap the EName A to B and B to A

select
CASE
WHEN Ename =’A’ then ‘B’
WHEN Ename =’B’ then ‘A’
ELSE Ename
END as Ename
FROM tablename;

--3)Write a query to create a clone of existing table without using Create Command

Select * into Clonetable from tablename

