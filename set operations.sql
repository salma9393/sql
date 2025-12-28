--set operators
use employement;
select * from employee;
select * from department;
select emp_name from employee
union 
select dept_name from department;
select emp_id from employee
union all
select dept_name from department;
select dept_id from employee
intersect 
select dept_id from department;
--minus does work in sql or mysql it works on 

select dept_id from department
except
select dept_id from employee;