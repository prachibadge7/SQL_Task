--Task_1
create table Employee_details(
EmployeeID Serial,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Email  VARCHAR(100),
PhoneNumber VARCHAR(15),
HireDate DATE,
Salary DECIMAL(10,2), 
DepartmentID Integer, 
IsActive BOOLEAN, 
JobTitle VARCHAR(100)
)		
select *from Employee_details	

--Task_2
insert into Employee_details values(1,'Prachi','Badge','Prachibadge@gmail.com',7972507408,'11-11-2025',50000,11,'True','DataAnalyst'),
(2,'Aditi','Thakre','Aditithakre@gmail.com',9843567623,'10-10-2024',40000,12,'True','FrontendDev'),
(3,'Shrutika','Talware','Srutikatalware@gmail.com',7978950748,'9-9-2025',80000,13,'False','BAAnalyst'),
(4,'Sakshi','Pande','Sakshipande@gmail.com',7902506408,'2-4-2023',30000,14,'False','JavaDev'),
(5,'Muskan','Harde','Muskanharde@gmail.com',9902406498,'9-2-2022',20000,15,'True','PythonDev')

--Task_3 import data

--Task_4 
update Employee_details set DepartmentID=0 where IsActive='False'

--Task_5
update Employee_details set salary=
case
when IsActive='False'and DepartmentID=0
and JobTitle in('HR Manager','Financial Analyst','Business Analyst','Data Analyst') then salary*1.08
else salary
end 

--Task_6
select FirstName as Name,LastName as Surname ,Salary from Employee_details where salary between 30000 and 50000

--Task_7
select *from Employee_details where  FirstName like 'A%'

--Task_8
delete from Employee_details where EmployeeID between 1 and 5

--Task_9
alter table  Employee_details rename to employee_database
alter table  employee_database rename column firstname to Name
alter table  employee_database rename column lastname to Surname
select *from employee_database

--Task_10
alter table employee_database add column state varchar not null default 'India'
update employee_database set state =
case
when isactive='True' then 'India'
else 'USA'
end




















