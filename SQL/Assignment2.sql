create table tblEmp
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

--Assignment 2;

-- Q1 Retrieve a list of MANAGERS. 

Select EName , EmpNo from tblEmp where EmpNo in(Select distinct(mgrid) from tblEmp) 

-- Q2  Find out the names and salaries of all employees earning more than 1000 per Month

Select EName , Sal from tblEmp where sal > 1000;

-- Q3  Display the names and salaries of all employees except JAMES.

Select EName , Sal from tblEmp where EName != 'James';

-- Q4 Find out the details of employees whose names begin with ‘S’. 

Select * from tblEmp where EName like 'S%'

--Q5 Find out the names of all employees that have ‘A’ anywhere in their name. 

Select * from tblEmp where EName like '%A%'

--Q6 Find out the names of all employees that have ‘L’ as their third character in their name. 

Select * from tblEmp where EName like '__L%'

--Q7 Compute daily salary of JONES. 

Select EName , SAL/30 as 'Daily-Salary' from tblEmp where EName = 'JONES';

--q8 Calculate the total monthly salary of all employees. 

Select sum(sal) as 'Total Salary Paid' from tblEmp

-- Q9 Print the average annual salary . 

Select avg(sal*12) as 'Average yearly Salary' from tblEmp

--Q 10 Select the name, job, salary, department number of all employees except SALESMAN from department number 30. 

Select Ename , Job , Sal , Deptno from tblemp where Empno not in ( Select EmpNo from tblEmp where Job = 'SALESMAN' and DeptNo = 30);

--Q 11  List unique departments of the EMP table. 

Select distinct(DeptNo) from tblEmp

--Q12 List the name and salary of employees who earn more than 1500 and are in department 10 or 30. Label the columns Employee and Monthly Salary respectively.

Select Ename as 'Employee' , Sal as 'Monthly Salary' from tblEmp where Sal > 1500 and Deptno not in (10,30)

-- Q13 Display the name, job, and salary of all the employees whose job is MANAGER or 
--ANALYST and their salary is not equal to 1000, 3000, or 5000.

Select Ename , Job , Sal  from tblEmp where (Job = 'Manager' or Job = 'Analyst') and (sal not in (1000,3000,5000))

--Q14  Display the name, salary and commission for all employees whose commission 
--amount is greater than their salary increased by 10%. 

Select Ename  , Sal , Comm  from tblEmp where comm > (sal + sal*.1)

--Q15  Display the name of all employees who have two Ls in their name and are in 
--department 30 or their manager is 7782.

SELECT ename 
  FROM tblEmp 
 WHERE (ename LIKE '%l%l%' 
    OR ename LIKE '%ll%')
   AND (DeptNo = 30 AND MgrID = 7782) ;

--Q16 Display the names of employees with experience of over 10 years and under 20 yrs.

SELECT EName  as 'Employee Name' 
FROM tblEmp
WHERE  (YEAR(GETDATE()) - YEAR(hiredate))  between 10 and 20

--Q17 Retrieve the names of departments in ascending order and their employees in 
--descending order.

SELECT D.DName , E.EName
FROM tblDept D INNER join tblEmp E
on D.DeptNo = E.DeptNo
Order by D.DName
, E.Ename DESC

--Q18 Find out experience of MILLER. 

Select Ename  , (YEAR(GETDATE()) - YEAR(hiredate)) as 'Experience' from tblEmp where EName = 'MILLER'

