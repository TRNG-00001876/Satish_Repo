use Employee;

create table Department (
DepartmentID int primary key,
Designation varchar(20) not null
);

select * from Department;

create table Employees (
EmployeeID int unique not null,
FirstName varchar(30) not null,
LastName varchar(30) not null,
Email varchar(30) unique,
DateOfBirth date not null,
DepartmentID int references Department(DepartmentID)
);

select * from Employees;


/* Task 2: Table Alteration and Keys */

alter table Employees add PhoneNumber varchar(15); 

alter table Employees add constraint uk_compositeprimarykey unique(EmployeeID,Email); 


/* Task 3: Data Manipulation */


insert into Department(DepartmentID,Designation) values(401,'developer');
insert into Department(DepartmentID,Designation) values(402,'tester');
insert into Department(DepartmentID,Designation) values(403,'admin');
insert into Department(DepartmentID,Designation) values(404,'software engineer');
insert into Department(DepartmentID,Designation) values(405,'service desk');

insert into Employees(EmployeeID,FirstName,LastName,Email,DateOfBirth,DepartmentID,PhoneNumber) values(1,'satish','kollu','satishkollu954@gmail.com','09/12/2000',401,9283948488);
insert into Employees(EmployeeID,FirstName,LastName,Email,DateOfBirth,DepartmentID,PhoneNumber) values(2,'sai','babu','saibabu@gmail.com','10/1/2001',402,9182202057);
insert into Employees(EmployeeID,FirstName,LastName,Email,DateOfBirth,DepartmentID,PhoneNumber) values(3,'pavan','addala','pavan8@gmail.com','11/10/2001',403,9542390265);
insert into Employees(EmployeeID,FirstName,LastName,Email,DateOfBirth,DepartmentID,PhoneNumber) values(4,'sriram','kotla','sriram9@gmail.com','01/12/2002',404,6307080444);
insert into Employees(EmployeeID,FirstName,LastName,Email,DateOfBirth,DepartmentID,PhoneNumber) values(5,'purna','donga','purna10@gmail.com','12/6/2000',405,7978556633);


update Employees set PhoneNumber=9676880038 where EmployeeID=2;

delete from Employees where EmployeeID=5;


/* Task 4: Testing Constraints */

insert into Employees(EmployeeID,FirstName,LastName,Email,DateOfBirth,DepartmentID,PhoneNumber) values(1,'purna','donga','purna10@gmail.com','12/6/2000',405,7978556633);

insert into Employees(EmployeeID,FirstName,LastName,Email,DateOfBirth,DepartmentID,PhoneNumber) values(5,'purna','donga','sriram9@gmail.com','12/6/2000',405,7978556633);

insert into Employees(EmployeeID,FirstName,LastName,Email,DateOfBirth,DepartmentID,PhoneNumber) values(5,null,'donga','sriram9@gmail.com','12/6/2000',405,7978556633);

insert into Employees(EmployeeID,FirstName,LastName,Email,DateOfBirth,DepartmentID,PhoneNumber) values(6,'mani','kanta','mani@gmail.com','03/6/2000',406,7978556993);


