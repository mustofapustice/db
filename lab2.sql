create database university;
use university;

--create table
create table instructor(ID varchar(15),name varchar(20) not null,dept_name varchar(20),salary numeric(8,2),primary key(ID));
insert into instructor values('200615','Gulam Mustofa','ICE',100000);
insert into instructor values('200616','Rakibul hossain','EECE',80000);
insert into instructor values('200617','SOBUJ HOSSAIN','EEE',90000);
insert into instructor values('200618','SHIHAB','CIVIL',70000);
insert into instructor values('200608','SOHEL','EEE',85000);
insert into instructor values('200619','ALAMIN','ICE',95000);

--add table column in table 

select * from instructor;
alter table instructor add course_id varchar(20);

--delete column from table
alter table instructor drop column dept_name;
select*from instructor;

--delte table
drop table instructor;
select * from instructor;
