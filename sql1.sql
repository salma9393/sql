--ddl ,dml,dcl operations on sql
create database company;
use company;
use company;
create table employees (emp_id int,emp_name varchar(20),emp_salary int,emp_address varchar(50));
desc employees;
alter table employees  add age int;
desc employees;
alter table employees drop column age;
rename table employees To employe_staff;
select * from employees;
select * from employe_staff;
insert into employe_staff (emp_id,emp_name,emp_salary,emp_address) values(1,'raji',50000,'hyderabad');
select*from employe_staff;
truncate table employe_staff;
desc employe_staff;
drop table employe_staff;
 
 
 --dml operations
 use  company;
 create table staff(id int ,name varchar(20),salary int ,address varchar(10));
 rename table staff to employees;
INSERT INTO employees (id,name , salary, address)VALUES
 (1, 'Ravi', 40000, 'Delhi'),
 (2, 'Priya', 60000, 'Mumbai'),
 (3, 'Kiran', 55000, 'Hyderabad'),
 (4, 'Salma', 45000, 'Chennai'),
 (5, 'Arjun',  42000, 'Delhi');
 INSERT INTO employees VALUES (6, 'Khaja', 65000, 'Bangalore');
 desc employees;
 select* from employees;
 SET Sql_safe_updates=0;
UPDATE employees set salary = 70000 WHERE name='arjun';
SET Sql_safe_updates=1;
delete from employees where id=6;


 --dcl commands
 grant select on employees to ravi;
 CREATE USER 'ravi'@'localhost' IDENTIFIED BY 'your_password';
 GRANT SELECT ON employees TO 'ravi'@'localhost';
 SELECT * 
FROM information_schema.TABLE_PRIVILEGES
WHERE TABLE_NAME = 'employees';
SELECT * employees;
FROM information_schema.TABLE_PRIVILEGES
WHERE TABLE_SCHEMA = 'company';






--tcl commands
use company;
INSERT INTO employees VALUES (7, 'mani', '50000','delhi');
set sql_safe_updates=0;

UPDATE employees SET address = 'hyderabad' WHERE id = 4;
set sql_safe_updates=1;

COMMIT;
use company;
select * from employees;
set sql_safe_updates=0;
update employees set address = 'nellore' where id =7;
set sql_safe_updates=1;
rollback;
select * from employees;
set sql_safe_updates=0;
delete from employees where id=4;
rollback;
insert into employees values(8,'ammu',40000,'chennai');
savepoint sp1;
update employees set name='salma' where id=8;
rollback to sp1;


--tcl commands
start transaction;
savepoint sp1;
set sql_safe_updates=0;
update employees set name='ammu'where id=8;
rollback to sp1;
commit;
select* from employees;



 
 

 


