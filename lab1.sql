
use university 
create table department( dept_name varchar(20), building varchar (15), budget numeric(8,2), primary key(dept_name) ); 
insert into department values('ICE','Engineering',87000)
insert into department values('CSE','Engineering',90000) 
insert into department values('EEE','Science',95000)
insert into department values('EECE','Science',80000)
insert into department values('BANGLA','BANGLA',68000)
insert into department values('ENGLISH','ENGLISH',55000)
insert into department values('IE','Engineering',87000)

--show or select department table
select * from department;

--deleting department table
delete from department where dept_name='ICE'
select * from department

--update department
update department set budget = budget+budget*1.5
select * from department