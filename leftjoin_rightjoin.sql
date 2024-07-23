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

-- left join
select *
from employees 
left join employeeuni
on employees.id=employeeuni.id;

-- right join
select e1.name,e2.id
from employees e1
right join employees e2
on e1.id=e2.id;

