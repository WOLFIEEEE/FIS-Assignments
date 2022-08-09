﻿create table tblEmp
(
	EmpNo int primary key,
	EName varchar(30) not null,
	Job varchar(30),
	MgrID int,
	HireDate date,
	Sal int,
	Comm int,
	DeptNo int,
	FOREIGN KEY (DeptNo) REFERENCES tblDept(DeptNo)
)

insert into tblEmp values(7369, 'SMITH', 'CLERK', 7902, '17-DEC-80', 800, null, 20),
                      (7499, 'ALLEN', 'SALESMAN', 7698, '20-FEB-81', 1600, 300, 30), 
                      (7521, 'WARD', 'SALESMAN', 7698, '22-FEB-81', 1250, 500, 30),
					  (7566, 'JONES', 'MANAGER', 7839, '02-APR-81', 2975, null, 20),
                      (7654, 'MARTIN', 'SALESMAN', 7698, '28-SEP-81', 1250, 1400, 30), 
					  (7698, 'BLAKE', 'MANAGER', 7839, '01-MAY-81', 2850, null, 30),
                      (7782, 'CLARK', 'MANAGER', 7839, '09-JUN-81', 2450, null, 10), 
                      (7788, 'SCOTT', 'ANALYST', 7566, '19-APR-87', 3000, null, 20),
					  (7839, 'KING', 'PRESIDENT', NULL, '17-NOV-81', 5000, null, 10),
                      (7844, 'TURNER', 'SALSMAN', 7698, '08-SEP-81', 1500, null, 30),
                      (7876, 'ADAMS', 'CLERK', 7788, '23-MAY-87', 1100, null, 20),
					  (7900, 'JAMES', 'CLERK', 7698, '03-DEC-81', 950, null, 30),
					  (7902, 'FORD', 'ANALYST', 7566, '03-DEC-81', 3000, null, 20),
					  (7934, 'MILLER', 'CLERK', 7782, '23-JAN-82', 1300, null, 10)

Select * from tblEmp

create table tblDept
(
	DeptNo int primary key,
	DName varchar(30),
	Loc varchar(50)
)

INSERT INTO tblDept values(10, 'ACCOUNTING', 'NEW YORK'),
                       (20, 'RESEARCH', 'DALLAS'),
					   (30, 'SALES', 'CHICAGO'),
					   (40, 'OPERATIONS', 'BOSTON')

Select * from tblDept

--1. List all employees whose name begins with 'A'. 

Select * from tblEmp where EName like 'a%'

--2. Select all those employees who don't have a manager. 

Select * from tblEmp where MgrId IS NULL

--3. List employee name, number and salary for those employees who earn in the range 1200 to 1400. 

Select EmpNo, EName, Sal from tblEmp where Sal between 1200 and 1400

--4. Give all the employees in the RESEARCH department a 10% pay rise. Verify that this has been done by listing all their details before and after the rise. 
Select EmpNo, EName, Sal from tblEmp, tblDept where tblEmp.DeptNo = tblDept.DeptNo and tblDept.DName = 'Research'

UPDATE tblEmp 
SET Sal = Sal + Sal * 0.1
Where tblEmp.DeptNo IN (select DeptNo from tblDept where Dname = 'Research')

Select EmpNo, EName, Sal from tblEmp, tblDept where tblEmp.DeptNo = tblDept.DeptNo and tblDept.DName = 'Research'

--5. Find the number of CLERKS employed. Give it a descriptive heading. 

Select count (*) as 'No. of CLERKS' from tblEmp where Job = 'clerk'

--6. Find the average salary for each job type and the number of people employed in each job. 

Select Job, AVG(Sal) as 'Avg Sal', Count (*) as 'No. of People' from tblEmp group by Job

--7. List the employees with lowest and highest salary. 

Select EName, Sal from tblEmp Where Sal = (select max(Sal) from tblEmp) or Sal = (Select Min(Sal) from tblEmp)

--8. List full details of departments that don't have any employees. 

Select Dname as 'Dept having No Employee' , DeptNo , loc from tblDept Where
tblDept.DeptNo not in (Select DeptNo from tblEmp)

--9. Get the names and salaries of all the analysts earning more than 1200 who are based in department 20. Sort the answer by ascending order of name. 

Select EName, Sal from tblEmp where Job = 'Analyst' and Sal > 1200 and DeptNo = 20 order by EName

--10. For each department, list its name and number together with the total salary paid to employees in that department. 

SELECT D.DName , D.DeptNo , D.loc , isnull(sum(sal), 0) as 'Total Salary Paid'
FROM tblDept D Left join tblEmp E
on D.DeptNo = E.DeptNo
Group by D.DeptNo , D.DName , D.DeptNo , D.Loc

--11. Find out salary of both MILLER and SMITH.

Select EName, Sal from tblEmp Where EName in ('SMITH', 'MILLER')

--12. Find out the names of the employees whose name begin with �A� or �M�. 

Select EName from tblEmp where EName like '[AM]%'

--13. Compute yearly salary of SMITH. 

Select EName, Sal * 12 as 'YSal' from tblEmp where EName = 'SMITH'

--14. List the name and salary for all employees whose salary is not in the range of 1500 and 2850.

Select EName, Sal from tblEmp where Sal not between 1500 and 2850