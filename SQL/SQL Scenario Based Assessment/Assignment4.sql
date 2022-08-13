--Question 1 Write a query to fetch the details of the books written by author whose name ends with er.

--Table code

create table books(

id int primary key,
title varchar(40),
author varchar(20),
isbn varchar(20),
published_date date
)

insert into books values
(1 , 'My first SQL book' , 'Mary Parker' , '981483029127' , '2012-02-22'),
(2 , 'My Second SQL book' , 'John Mayer' , '857300923713' , '1972-07-03'),
(3 , 'My third SQL book' , 'Cary Flint' , '523120967812' , '2015-10-18')

-- Table Code Ended

Select * from books where author like '%er'

--Question 2 Display the Title ,Author and ReviewerName for all the books from the above table- 

--Table code

create table reviews(

id int primary key,
book_id int,
reviewer_name varchar(40),
content varchar(20),
rating int,
published_date date
)

insert into reviews values
(1 , 1  ,'John Smith' , 'My First Review' , 4 , '2012-02-22'),
(2 , 2,'John Smith' , 'My second review' , 5 , '1972-07-03'),
(3 , 2 , 'Alice Walker' , 'Another Review' , 1, '2015-10-18')

--Table code Ended

Select A.Title , A.Author , B.reviewer_name from books A
INNER JOIN reviews B 
on A.id = B.book_id;

--Question  3 Display the  reviewer name who reviewed more than one book.

Select reviewer_name from reviews 
group by reviewer_name
having COUNT(reviewer_name) > 1

--Question 4 Display the Name for the customer from above customer table  who live in same address which has
--character o anywhere in address


--Table code
create table customers(
id int primary key,
name varchar(20),
age int,
address varchar(20),
salary int
)

insert into customers values(1 , 'Ramesh' , 32 , 'Ahmedabad' , 2000),
(2 , 'Khilan' , 25 , 'Delhi' , 1500),
(3, 'kaushik' , 23 , 'Kota' , 2000),
(4 , 'Chaitali' , 25 , 'Mumbai' , 6500),
(5 , 'Hardik' , 27 , 'Bhopal' , 8500),
(6 , 'Komal' , 22 , 'MP' , 4500),
(7 , 'Muffy' , 24 , 'Indore' , 10000)
,(8 , 'Khushwant' , 25, 'Bhopal' , 10000)

--Table code Ended


SELECT id, name, age FROM customers 
WHERE address IN (SELECT address FROM customers GROUP BY address HAVING COUNT(*) > 1) and address like '%o%'


--Question 5 Write a query to display the   Date,Total no of customer  placed order on same Date


--Table code

create table orders(
iod int primary key,
Date date,
Customer_id int ,
amount int ,
foreign key (Customer_id) references customers(id)
)

insert into orders values(102 , '2009-10-08 00:00:00' , 3 , 3000),
(100 , '2009-10-08 00:00:00' , 3 , 1500),
(101 , '2009-11-20 00:00:00' , 2 , 1560),
(103 , '2008-05-20 00:00:00' , 4 , 2060)

--Table code ended

Select Date , count(Date) from orders
Group by Date

--Question 6 

--Table code

create table Employee (
id int primary key,
name varchar(20),
age int,
address varchar(20),
salary int
)

insert into Employee values(1 , 'Ramesh' , 32 , 'Ahmedabad' , 2000),
(2 , 'Khilan' , 25 , 'Delhi' , 1500),
(3, 'kaushik' , 23 , 'Kota' , 2000),
(4 , 'Chaitali' , 25 , 'Mumbai' , NULL),
(5 , 'Hardik' , 27 , 'Bhopal' , null),
(6 , 'Komal' , 22 , 'MP' , 4500),
(7 , 'Muffy' , 24 , 'Indore' , 10000)
,(8 , 'Khushwant' , 25, 'Bhopal' , NULL)

--Table code ended


Select LOWER(name) AS 'NAME' from Employee where salary IS null;

--question 7 Write a sql server query to display the Gender,Total no of male and
--female from the above relation   


--Table code

create table StudentDetails (
RegisterNo int primary key,
name varchar(20),
age int,
Qualification varchar(20),
Mobileno varchar(20),
mail_id varchar(20),
location varchar(20),
Gender char
)

insert into StudentDetails values(1 , 'Sai' , 22 , 'B.E' , '9923211223' , 'a@gmail.com' , 'Chennai' , 'M'),
(2 , 'Nisha' , 22 , 'B.E' , '9923211224' , 'b@gmail.com' , 'Madurai' , 'M'),
(3, 'kaushik' , 22 , 'B.E' , '9923211225' , 'c@gmail.com' , 'Selam' , 'F'),
(4 , 'Chaitali' , 23 , 'B.E' , '9923211226' , 'd@gmail.com' , 'Theni' , 'F'),
(5 , 'Hardik' , 24 , 'B.Tech' , '9923211227' , 'f@gmail.com' , 'Madurai' , 'F'),
(6 , 'Komal' , 25 , 'M.E' , '9923211228' , 'h@gmail.com' , 'Pune' , 'M')

--Table code ended


select Gender , COUNT(gender) as total from StudentDetails group by Gender

--Question 8 Retrieve the CourseName and the number of student
--registered for each course between 2018-01-02 and 2018-02-28 and arrange the result by courseid in descending order

--Table code 

create table coursedetails(
C_id varchar(5) primary key,
C_name varchar(20),
start_date date,
End_date date,
fee int
)

insert into coursedetails values
('DN003' , 'Dot-net' , '2018-02-01' , '2018-02-28' , 15000),
('DV004' , 'python' , '2018-03-01' , '2018-04-15' , 12000),
('JA002' , 'Java' , '2018-01-02' , '2018-01-20' , 10000),
('JC001' , 'net' , '2018-01-02' , '2018-01-12' , 14000)

create table courseregistration(
RegisterNo int,
c_id varchar(5),
batch varchar(5),
primary key(RegisterNo , c_id),
foreign key (RegisterNo) references StudentDetails(RegisterNo),
foreign key (c_id) references coursedetails(c_id)
)

insert into courseregistration values
(2 , 'DN003' , 'FN'),
(3 , 'DV004' , 'AN'),
(4 , 'JA002' , 'FN'),
(2 , 'JA002' , 'AN'),
(5 , 'JC001' , 'FN')

--Table code ended

Select C_name , count(B.RegisterNo) , start_date from coursedetails A
INNER join courseregistration B
on A.C_id = B.c_id
Group by C_name , B.RegisterNo , start_date
having start_date between '2018-01-02' AND '2018-02-28'


--Question 9 

--Table code 

Create table customer1(
customer_id int primary key,
first_name varchar(20),
last_name varchar(20)
)

insert into customer1 values(1 , 'George' , 'Washington'),
(2 , 'John' , 'adams'),
(3 , 'Thomas' , 'Jefferson'),
(4, 'james' , 'Madison'),
(5 , 'James' , 'Monroe')

create table order1(
order_id int primary key,
order_date date,
amount int,
customer_id int,
Foreign key (customer_id) references customer1(customer_id)
)

insert into order1 values
(1 , '07/04/1776' , 170 , 1),
(2 , '07/04/1776' , 100 , 1),
(3 , '05/04/1779' , 200 , 2),
(4 , '07/04/1774' , 200 , 3),
(5 , '05/04/1777' , 135 , 4),
(6 , '05/04/1772' , 150 , 5)


Select A.customer_id , first_name from customer1 A
inner join order1 B
on A.customer_id = B.customer_id
group by A.customer_id , first_name
having COUNT(A.customer_id) = 2


--Question 10

select  REVERSE(name) as studentsname , UPPER(location) as location from StudentDetails;

--Question 11

Create table order2(
id int primary key,
orderdate date,
ordernumber int,
Customerid int,
TotalAmount int
)

Create table orderitem(
id int primary key,
orderid int,
productid int,
Unitprice int,
Quantity int,
foreign key (orderid) references order2(id),
foreign key (productid) references Product(id)
)

Create table Product(
id int primary key,
productname varchar(20),
Supplierid int,
Unitprice int,
Package int,
IsDiscontinued char
)

create view viewtable(ProductName , Ordered_Qunatity , OrderNumber)
As select ProductName , Quantity , ordernumber from order2 A
INNER JOIN orderitem B
on A.id = B.orderid
INNER JOIN Product C
on C.id = B.productid


--Question 12

Select name , C_name from courseregistration
Inner join StudentDetails
on courseregistration.RegisterNo = StudentDetails.RegisterNo
Inner join coursedetails
on coursedetails.C_id = courseregistration.c_id 
where name = 'Nisha'


