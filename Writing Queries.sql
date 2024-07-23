use ddl;
create table employees(
id int,
name varchar(20)
);
insert into employees
values('1','Alice'),
('7','bob'),(11,'meir'),('90','winston'),('3','jon');

create table EmployeeUNI(
id int,unique_id int
);
insert into EmployeeUNI
values(3,1),(11,2),(90,3);

select * from EmployeeUNI;
select * from Employees;

select Employeeuni.unique_id,Employees.name
from Employeeuni
left outer join employees
on employeeuni.id=employees.id;

select e.id,e.name
from employees as e
join employees as j
on e.id=j.id;

