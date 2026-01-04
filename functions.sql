use employement;
select * from employee;
SELECT emp_name, UPPER(emp_name) AS upper_name FROM employee;
select emp_name ,lower(emp_name) as lower_name from employee;
select concat(emp_name,'-',dept_id) as result from employee;
select substr(emp_name,1,5)as first_name from employee;
select emp_name,length(emp_name) as l_name from employee;
select emp_name,replace(emp_name,' ','-')as replaced from employee;

-/*numeric functions*/
use employement;
select * from employee;
select emp_salary, round(emp_salary,400) as rounded_salary from employee;
select emp_salary,truncate(emp_salary,100)as truncated_salary from employee;
select emp_id ,mod(emp_id,2)as mod_result from employee;
select emp_id, mod(emp_id,3) as mod_result from employee;
set sql_safe_updates=0;
select * from employee;
select emp_salary ,CEIL(emp_salary)as ciel_salary ,FLOOR(emp_salary) as floor_salary from employee;

/*date functions*/
select current_date,current_timestamp from employee;
set sql_safe_updates=0;
alter table employee add hiredate date;
select* from employee;
SELECT emp_name,add_months(emp_salary, 6) AS after_6_months FROM employee;
UPDATE employee SET hiredate = '1-2-24' WHERE (emp_id = '1');
UPDATE employee SET hiredate = '3-5-20' WHERE (emp_id = '2');
UPDATE employee SET hiredate = '4-8-19' WHERE (emp_id = '3');
UPDATE employee SET hiredate = '5-2-22' WHERE (emp_id = '4');
UPDATE employee SET  hiredate = '3-9-22' WHERE (emp_id = '5');
SELECT emp_name, adddate(hiredate, 6) AS after_6_months FROM employee;
--/*add month doesnt exists in sql*/
SELECT emp_name,
       EXTRACT(YEAR FROM hiredate) AS hire_year,
       EXTRACT(MONTH FROM hiredate) AS hire_month
FROM employee;
select emp_name, TO_CHAR(hiredate,'DD-MM-YYYY')as formatted_date from employee;/*not work*/
SELECT TO_DATE('25-12-2025', 'DD-MM-YYYY') FROM Employee;/*not worked*/
select emp_name,CAST( emp_salary AS char)as salary_text from employee;
select* from employee;
set sql_safe_updates=0;
update employee set emp_salary=null where emp_id=5;
select emp_name,NVL(emp_salary,0)as salary from employee,
SELECT emp_name, COALESCE(emp_salary, 0) AS best_value
FROM employee;
select nullif(emp_salary,50000) from employee;
select emp_name,emp_salary, case  
when emp_salary>=30000 then 'high salary'
when emp_salary is null then 'no salary'
else 'medium salary'
end as salary_status
from employee;
/*aggregate functions*/
select count(*) as total_employees,
sum(emp_salary) as total_salary,
avg (emp_salary) as avg_salary,
max(emp_salary) as maximum_salary,
min(emp_salary) as minimum_salary
from employee;
select dept_id,count(*) as emp_count,sum(emp_salary) as total_salary from employee group by dept_id;


/*windows function*/
select emp_id ,emp_name,dept_id ,emp_salary, row_number() over(partition by dept_id order by emp_salary desc)
from employee;
select emp_name,hiredate,emp_salary,sum(ifnull(emp_salary,0)OVER(order by hiredate) as running_total from employee;