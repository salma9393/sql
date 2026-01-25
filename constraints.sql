use employement;
select* from employee;
select * from department;
create table student ( id int , name varchar(50) not null);
desc student;
insert into student (id ,name) values(1 ,"ammulu");
insert into student (id ,name) values(1 ,null);
alter table student add email varchar(20) unique;
select * from student;
set Sql_safe_updates=0;
update student set  email="ammulu@gmail.com" where id=1;
select* from student
insert into student values(2,'raji','raji@gmail.com');
select* from student;
insert into student values(3,'ammu','ammulu@gmail.com');
alter table student add dept_id int primary key;
desc student;
create table student1 (id int primary key, name varchar(20));
insert into student1 values(1,'priya');
insert into student1 values(2,'pavi');
insert into student1 values(3,'priya');
insert into student1 values(1,'pavi');
CREATE TABLE Orders (
  id INT,
  name varchar(20),
  FOREIGN KEY (id) REFERENCES student1(id)
);
insert into orders values(1,'abc'),
(2,'cde'),
(3,'efg');
select* from orders;
insert into orders values(4,'king'),
(5,'queen');
use employement;
alter table student add age int check(age>=18);
select * from student;
set Sql_safe_updates=0;
update student set age=20 where id=1;
update student set age=25 where id=2;
select* from student;
alter table student add status varchar(20) default 'active';
select* from student;
set Sql_safe_updates=0;
update student set status=null where id=1;
select* from student;