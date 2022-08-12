--************************************Create the Clients table******************************************** 

Create table Clients(

Client_ID int primary key,
Cname varchar(40) not NULL,
Address varchar(30),
Email varchar(30) unique,
phone varchar(30),
Business varchar(30) not NULL
)

insert into Clients values(1001 , 'ACME Utilities' , 'Noida' , 'contact@acmeutil.com' , '9567880032' ,'Manufacturing' ),
(1002 , 'Trackon Consultants' , 'Mumbai' , 'consult@trackon.com' , '8734210090' , 'Consultant'),
(1003 , 'MoneySaver Distributors' , 'Kolkata' , 'save@moneysaver.com' , '7799886655' , 'Reseller'),
(1004 , 'Lawful Corp' , 'Chennai' , 'justice@lawful.com' , '9210342219' , 'Professional')

--


--************************************Create the Departments table******************************************** 
Create table Departments(
Deptno int primary key,
Dname varchar(15) not NULL,
Loc varchar(20)
)

insert into Departments Values(10 , 'Design' , 'Pune' ) , 
(20 , 'Development' , 'Pune'),
(30 , 'Testing' , 'Mumbai'),
(40 , 'Document' , 'Mumbai')

--************************************Create the Employees table******************************************** 

Create table Employees(
Empno int primary key,
Ename varchar(20) not null,
Job varchar(15),
Salary int CHECK (Salary >= 0),
Deptno int,
foreign key (Deptno) references Departments(Deptno)
)


insert into Employees values(7001 , 'Sandeep' , 'Analyst' , 25000 , 10),
(7002 , 'Rajesh' , 'Designer' , 30000 , 10),
(7003 , 'Madhav' , 'Developer' ,40000 , 20),
(7004 , 'Manoj' , 'Developer' , 40000 , 20),
(7005 , 'Abhay' , 'Designer' , 35000 , 10),
(7006 , 'Uma' , 'Tester' , 30000 , 30),
(7007 , 'Gita', 'Tech.Writer' , 30000 , 40),
(7008 , 'Priya' , 'Tester' , 35000 , 30),
(7009 , 'Nutan' , 'Developer' , 45000 ,20),
(7010 , 'Smita' ,  'Analyst' , 20000 , 10),
(7011 , 'Anand' , 'Project Mgr' , 65000 , 10)


--************************************Create the projects table******************************************** 

Create table projects
(
Project_id int primary key,
descr varchar(30) not null,
start_date date,
planned_end_date date,
actual_end_date date ,
Budget int CHECK (Budget >= 0),
Client_id int,
Foreign key (Client_id) references Clients(Client_id)
)

Alter table projects add constraint actual_end_date check (actual_end_date > planned_end_date)

insert into projects values
(401 , 'Inventory' , '01-Apr-11' , '01-Oct-11' , '31-Oct-11' , 150000 , 1001),
(402 , 'Accounting' , '01-Aug-11' , '01-Jan-12' , NULL , 500000 , 1002),
(403 , 'Payroll' , '01-Oct-11' , '31-Dec-11' , NULL , 75000 , 1003),
(404 , 'Contact Mgmt' , '01-Nov-11' , '31-Dec-11' , NULL , 50000 , 1004)


--************************************Create the EmpProject table******************************************** 

create table EmpProjectTasks
(
Project_id int ,
Empno int ,
start_date date,
end_date date,
task varchar(25) not null,
status varchar(15) not null,
primary key(project_id , empno),
Foreign key (Project_id) references projects(project_id),
Foreign key (Empno) references Employees(Empno)
)


insert into EmpProjectTasks values
(401 , 7001 , '01-Apr-11' , '20-Apr-11' , 'System Analysis' , 'Completed'),
(401 , 7002 , '21-Apr-11' , '30-May-11' , 'System Design' , 'Completed'),
(401 , 7003 , '01-Jun-11' , '15-Jul-11' , 'Coding' , 'Completed'),
(401 , 7004 , '18-Jul-11' , '01-Sep-11' , 'Coding' , 'Completed'),
(401 , 7006 , '03-Sep-11' , '15-Sep-11' , 'Testing' , 'Completed'),
(401 , 7009 , '18-Sep-11' , '05-Oct-11' , 'Code Change' , 'Completed'),
(401 , 7008 , '06-Oct-11' , '16-Oct-11' , 'Testing' , 'Completed'),
(401 , 7007 , '06-Oct-11' , '22-Oct-11' , 'Documentation' , 'Completed'),
(401 , 7011 , '22-Oct-11' , '31-Oct-11' , 'Sign off' , 'Completed'),
(402 , 7010 , '01-Aug-11' , '20-Aug-11' , 'System Analysis' , 'Completed'),
(402 , 7002 , '22-Aug-11' , '30-Sep-11' , 'System Design' ,'Completed'),
(402 , 7004 , '01-Oct-11' , NULL , 'Coding' , 'In Progress')


--************************************Output of all the Tables******************************************** 

Select * from Clients
Select * from Departments
Select * from Employees
Select * from projects
Select * from EmpProjectTasks