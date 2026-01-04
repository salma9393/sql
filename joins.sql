--joins
create  database employement;
use employement;
create table employee(emp_id int primary key,emp_name varchar (20),dept_id int,emp_salary int,emp_address varchar(20));
desc employee;
insert into employee  values(1,'mani',101,40000,'hyderabad'),
(2,'baby',102,50000,'mumbai'),
(3,'pravallika',103,60000,'delhi'),
(4,'sreya',104,50000,'chennai'),
(5,'raji',105,30000,'secunderabad');
select* from employee;

create table department(dept_id int ,dept_name varchar(20),dept_employees int);
desc department;
insert into department values(101,'finance',100),
(102,'hr',200),
(103,'teaching',300),
(104,'administration',50),
(105,'it',200),
(106,'non it',150),
(107,'placement',100);
select* from department;
 select employee.emp_id,employee.emp_name,department.dept_name from employee inner join department on employee.dept_id=department.dept_id;
 select employee.emp_id,employee.emp_name,department.dept_name from employee left join department on employee.dept_id=department.dept_id;
 select employee.emp_id,employee.emp_name,department.dept_name from employee right join department on employee.dept_id=department.dept_id;
select employee.emp_id,employee.emp_name,department.dept_name from employee cross  join department on employee.dept_id=department.dept_id;
desc employee;
desc department;
 select employee.emp_id,employee.emp_name,department.dept_name from employee left join department on employee.dept_id=department.dept_id
 union
 select employee.emp_id,employee.emp_name,department.dept_name from employee right join department on employee.dept_id=department.dept_id;
  select employee.emp_id,employee.emp_name,department.dept_name from employee join department on employee.dept_id=department.dept_id;




