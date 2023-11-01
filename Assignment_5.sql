create table customer
( customer_id int Primary key,
   first_name varchar(10),
   last_name varchar(10),
   email varchar(25),
   address varchar(50),
   city varchar(15),
   state varchar(10),
   zip int
)

Insert into customer 
Values
(10, 'Kaustav', 'Dey', 'imkd2019@gmail.com' , 'Siliguri , Shaktigarh' , 'Siliguri' , 'W.B', 734005),
(20,'Debjit','Dutta','debjitnunku@gmail.com','Bonkers , Birbhum','Birbhum','W.B',736005),
(30,'Soumyadip','Das','soumyaisnoob@gmail.com','DumDum , Kolkata','Kolkata','W.B',730005),
(40,'Avi','Paul','hero@gmail.com','Kachrapra , Kolkata','Kolkata','W.B',738005),
(50,'Godfrey','Elden Lord','firsteldenlord@gmail.com','San Jose California','San Jose','U.S.A',12345)

create table Orders
( order_id int Primary key,
  order_date date,
  amount decimal(10,2),
  customer_id int references customer(customer_id)
)

Insert into  Orders
Values
(1,'10-Mar-2023',2299, 10),
(2,'26-Aug-2023',2050,20),
(3,'12-Sep-2023',1499,30),
(4,'17-Sep-2023',2499,40),
(5,'27-Sep-2023',1999,50)

--1. Arrange the ‘Orders’ dataset in decreasing order of amount
select * from orders
order by amount DESC

--2. Create a table with the name ‘Employee_details1’ consisting of these columns: ‘Emp_id’, ‘Emp_name’, ‘Emp_salary’. Create another table with the name ‘Employee_details2’ consisting of the same columns as the first
--tables

Create table Employee_details1 
( Emp_id int Primary Key,
  Emp_name varchar(25),
  Emp_Salary decimal(10,2)
)
Create table Employee_details2
( Emp_id int Primary Key,
  Emp_name varchar(25),
  Emp_Salary decimal(10,2)
)

Insert into Employee_details1
Values
(10, 'Kaustav Dey', 150000),
(20,'Debjit Dutta',145000),
(30,'Godfrey Elden Lord',200000)

Insert into Employee_details2
Values
(10, 'Kaustav Dey', 150000),
(20,'Soumyadip Das',80000),
(30,'Avi Paul',750000)

--3. Apply the UNION operator on these two tables
select * from Employee_Details1
union
select * from Employee_Details2

--4. Apply the INTERSECT operator on these two tables 
select * from Employee_Details1
intersect
select * from Employee_Details2

--5. Apply the EXCEPT operator on  these two tables

select * from Employee_Details1
Except
select * from Employee_Details2

select * from Employee_Details2
Except
select * from Employee_Details1