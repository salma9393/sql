use company;
select * from employees;
select name,salary from employees where salary>40000;
select distinct salary from employees;
select * from employees order by salary desc;
select id ,avg(salary) from employees group by id;
select id ,count(*) from employees group by id having count(*)>0;