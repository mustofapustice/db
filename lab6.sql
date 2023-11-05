create database university
use university
create table  instructorSalary(
            ID varchar(20),
			dept_name varchar(20),
			salary numeric(8,2),
			primary key(ID)
);

insert into instructorSalary values('1212','ICE','60000')
insert into instructorSalary values('1215','CE','77000')
insert into instructorSalary values('1219','CSE','85000')
insert into instructorSalary values('1214','EEE','65000')

select * from instructorSalary

select count(ID) as count_ID from instructorSalary
select max(salary) as max_salary from instructorSalary
select min(salary) as min_salary from instructorSalary
select avg(salary) as avg_salary from instructorSalary
select SUM(salary) as total_salary from instructorSalary
