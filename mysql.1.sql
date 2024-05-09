create database Raghu;
show databases;
use Raghu;
create table users(
id int not null auto_increment,
name varchar(50) not null,
age int not null,
primary key(id)
);
show tables;
describe users;
alter table users add gender varchar(10) not null after age;
alter table users 
   add city varchar(10) not null, 
    add contact varchar(50) not null;
alter table users modify contact varchar(25) not null;
alter table users rename to student;
select * from student;
insert into student values(null,'ram',25,'male','thanjavur',
9597652183);
insert into student values(null,'raja',26,'male','chennai',
9843220898);
insert into student (name,age,gender,city,contact) values ('ajay',27,'male','chennai',
9843220858),('karan',29,'male','trichy',9843220456);
select * from student;
delete from student where id=5;
delete from student where id=6;
delete from student where id=7;
delete from student where id=8;
update student set city='hosur',contact='8940989898' 
where id=3;
update student set age='30' where id=2;
truncate table student;
select * from student;