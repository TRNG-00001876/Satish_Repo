create database satish;

use satish;

create table Department (
Deptcode int unique not null,
DeptName varchar(30),
locationn varchar(40) 
);


select * from Department;

create table Employee (
Empcode int,
EmpFname varchar(20) not null,
EmpLname varchar(20) not null,
job varchar(40) not null,
Manager varchar(20) not null,
HireDate date not null,
salary int not null,
commission int,
Deptcode int
);

select * from Employee;

alter table department add constraint uk_Deptcode primary key(Deptcode);

alter table department add constraint DeptName unique(DeptName);

ALTER TABLE department ADD CONSTRAINT locationn_not_null check (locationn IS NOT NULL);


alter table employee add constraint fk_Deptcode foreign key(Deptcode) references department(deptcode);

ALTER TABLE employee ALTER COLUMN Empcode INT NOT NULL;

ALTER TABLE employee ADD CONSTRAINT PK_Empcode PRIMARY KEY (Empcode);


INSERT INTO DEPARTMENT VALUES (10, 'FINANCE', 'EDINBURGH'),
                              (20,'SOFTWARE','PADDINGTON'),
                              (30, 'SALES', 'MAIDSTONE'),
                              (40,'MARKETING', 'DARLINGTON'),
                              (50,'ADMIN', 'BIRMINGHAM');

select * from Department;

INSERT INTO EMPLOYEE VALUES (9369, 'TONY', 'STARK', 'SOFTWARE ENGINEER', 7902, '1980-12-17', 2800,0,20),
       (9499, 'TIM', 'ADOLF', 'SALESMAN', 7698, '1981-02-20', 1600, 300,30),    
       (9566, 'KIM', 'JARVIS', 'MANAGER', 7839, '1981-04-02', 3570,0,20),
       (9654, 'SAM', 'MILES', 'SALESMAN', 7698, '1981-09-28', 1250, 1400, 30),
       (9782, 'KEVIN', 'HILL', 'MANAGER', 7839, '1981-06-09', 2940,0,10),
       (9788, 'CONNIE', 'SMITH', 'ANALYST', 7566, '1982-12-09', 3000,0,20),
       (9839, 'ALFRED', 'KINSLEY', 'PRESIDENT', 7566, '1981-11-17', 5000,0, 10),
       (9844, 'PAUL', 'TIMOTHY', 'SALESMAN', 7698, '1981-09-08', 1500,0,30),
       (9876, 'JOHN', 'ASGHAR', 'SOFTWARE ENGINEER', 7788, '1983-01-12',3100,0,20),
       (9900, 'ROSE', 'SUMMERS', 'TECHNICAL LEAD', 7698, '1981-12-03', 2950,0, 20),
       (9902, 'ANDREW', 'FAULKNER', 'ANAYLYST', 7566, '1981-12-03', 3000,0, 10),
       (9934, 'KAREN', 'MATTHEWS', 'SOFTWARE ENGINEER', 7782, '1982-01-23', 3300,0,20),
       (9591, 'WENDY', 'SHAWN', 'SALESMAN', 7698, '1981-02-22', 500,0,30),
       (9698, 'BELLA', 'SWAN', 'MANAGER', 7839, '1981-05-01', 3420, 0,30),
       (9777, 'MADII', 'HIMBURY', 'ANALYST', 7839, '1981-05-01', 2000, 200, NULL),
       (9860, 'ATHENA', 'WILSON', 'ANALYST', 7839, '1992-06-21', 7000, 100, 50),
       (9861, 'JENNIFER', 'HUETTE', 'ANALYST', 7839, '1996-07-01', 5000, 100, 50); 

select * from Employee;


select e.empfname,e.emplname,e.deptcode,d.deptname,d.locationn from employee e inner join Department d  on e.deptcode=d.deptcode order by e.empfname,d.locationn; 

select empfname,(salary+commission) as 'total salary' from employee;

select max(salary) from employee;
select max(salary) from employee where salary not in(select max(salary) from employee);

select top 2 salary from employee order by salary desc;

select (salary+commission) as 'total salary' from employee where job='analyst' and Deptcode=20;

select avg(salary) as 'average salary',min(salary) as 'minimum salary' ,max(salary) as 'maximum salary' from employee where job='analyst';

select deptcode,Deptname from Department where locationn='Edinburgh';

select empfname,emplname from employee inner join department on employee.deptcode=department.deptcode where deptname='finance';

select avg(e.salary) as 'average salary',d.DeptName from employee e inner join Department d on e.Deptcode=d.Deptcode group by d.Deptcode,d.DeptName;

select top 10 salary as 'top 10 highest salaries' from employee order by salary desc;


select empfname,emplname from employee where 

select * from Employee where commission !=0;

select * from employee where salary>(select avg(salary) from employee);

select * from employee;