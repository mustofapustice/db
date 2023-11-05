----create alter and drop
create database university
use university
create table instructor(
	ID varchar(20),
	name varchar(20) not null,
	dept_name varchar(20),
	salary numeric(8,2),
	primary key(ID)
);
insert into instructor  values ('10101','Srinivasan','Comp.Sci',65000);
insert into instructor  values ('12121','Wu','Finance',90000);
insert into instructor values ('15151','Mozart','Music',40000);
insert into instructor  values ('22222','Einstein','Physics',95000);
insert into instructor values ('32343','EI Said','History',60000);
insert into instructor values ('33456','Gold','Physics',87000);
select * from instructor
select dept_name from instructor
---group by
select name from instructor group by name;
select dept_name,avg(salary) as avg_salary from instructor group by dept_name
select dept_name,count(*) from instructor group by dept_name
select * from instructor
---having clause
select dept_name,avg(salary) as avg_salary from instructor group by dept_name having avg(salary)>55000;
----order by clause
select * from instructor order by salary asc,name desc;
---view
CREATE VIEW faculty AS
SELECT ID, name, dept_name
FROM instructor;
select *from faculty;

----index
create index dept_inx on instructor(dept_name)

select dept_name from instructor;
---procedure
create procedure instruct_proc
AS
BEGIN
select dept_name as nameofdepartment from instructor where salary>40000
END
exec instruct_proc
