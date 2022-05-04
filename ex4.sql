show databases;
use institute;
create table department (Did int primary key,dept_Name varchar(20));
drop table staff;
create table staff(Sid int primary key,Name varchar(10),designation varchar(30),Qualification varchar(20),Types_of_appointment varchar(20),Did int not null, salary long,foreign key(Did) references department(Did));
insert into department values(1200,'MBA');
insert into department values(1201,'MCA');
insert into department values(1202,'M.Tec');
insert into department values(1203,'M.com');


insert into staff values(2500,'Anna','Professor','Doctorate','Guest',1202,65000);
insert into staff values(2501,'Sam','Professor','Doctorate','Regular',1201,60000);
insert into staff values(2502,'Adam','Professor','M.tec','Guest',1200,75000);
insert into staff values(2503,'Ann','Professor','Doctorate','Regular',1202,74000);
select * from department;
select * from staff;

-- 1
select department.dept_Name,count(Types_of_appointment) from staff join department on staff.Did=department.Did where Types_of_appointment='Guest' group by dept_Name;

-- 2
select s.dept_Name, max(count) from  (select count(Qualification)from staff join department on staff.Did=department.Did   where Qualification='Doctorate' group by dept_Name ) group by dept_Name; 





