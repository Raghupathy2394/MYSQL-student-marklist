create database task;
use task;
create table student(id int not null auto_increment primary key,name varchar(10) not null,
rollno int not null);
alter table student add gender varchar(10) not null,add age int not null after name;
alter table student drop column section;
describe student;
alter table student add column section varchar(10) not null;
alter table student modify name varchar(15) not null;
select * from student;
truncate student;
alter table student change rollno  RollNo int;
insert into student values(null,'alex',25,001,'male');
insert into student(name,age,Rollno,gender) values('boss',26,2,'male'),('elisha',23,3,'female'),
('franck',27,4,'male'),('gopi',28,5,'male'),('iniya',26,6,'female'),('lalitha',28,7,'female'),
('hari',26,8,'male'),('karan',22,9,'male'),('thina',20,10,'male'),('mathi',24,11,'male'),
('naveen',21,12,'male'),('saranya',24,13,'female'),('abi',26,14,'female'),('priya',26,15,'female'),
('siva',28,16,'male'),('mani',29,17,'male'),('riya',23,18,'female');
select id,name,gender,age from student;
update  student set name='kapil' where id=4; 
select id,name,age,gender from student where gender ='female' and age>=20;
select * from student where name  like  '%a' or age>=20 order by id;
select gender,count(id) from student group by gender;
select * from student;
alter table student add column city varchar(15) not null;
update student set city ='chennai' where id =5 or id =3 or id =8;
update student set city ='kovai' where id =4 or id =6 or id =7 or id=10;
update student set city ='madurai' where id =15 or id =13 or id =18 or id=11;
update student set city ='salem' where id;
select max(age) from student;
select round(avg(age)) as round from student;
select count(city) from student;
select city,count(id) from student group by city;
select name,city from student where city in('salem' ,'chennai');
select * from student where city not in('salem' ,'chennai') and age>=25;
select * from student where age not between 28 and 30;
select * from student where age  between 28 and 30;
select name,city from student;
select name,city,(
case 
  when city='salem' then 100
  when city='chennai' then 350
  when city='kovai' then 200
  when city='madurai' then 350
  else 0
end
) as amount from student; 
update student set city='hosur' where city='madurai';
drop table marks;
create table marks(mid int not null auto_increment primary key,id int not null,
M1 int not null,M2 int not null,M3 int not null);
insert into marks(id,M1,M2,M3) values(1,50,60,70),(2,55,62,75),(3,60,40,40),(4,50,90,70),(5,50,69,70),
(6,56,61,70),(7,59,66,70),(8,50,80,70),(9,50,60,30),(10,59,60,78),(11,50,63,75),(12,57,90,70),(13,50,62,70),(14,50,60,100),(15,50,80,90),
(16,50,30,70),(17,90,95,99),(18,77,99,55);
select * from marks;
select student.name,student.rollno,student.gender,marks.m1,marks.m2,marks.m3 from student inner join marks on
student.id=marks.id;
select student.name,student.rollno,student.gender,marks.m1,marks.m2,marks.m3 ,(marks.m1+marks.m2+marks.m3) as total ,
round((marks.m1+marks.m2+marks.m3)/3,0) as average,
case
when m1>=35 and m2>=35 and m3>=35 then 'pass'
else 'fail'
end as Result,
case
when m1>=35 and m2>=35 and m3>=35 then 
case 
when round((marks.m1+marks.m2+marks.m3)/3,0)>=90 and round((marks.m1+marks.m2+marks.m3)/3,0)<=100 then 'A'
when round((marks.m1+marks.m2+marks.m3)/3,0)>=80 and round((marks.m1+marks.m2+marks.m3)/3,0)<=89 then 'B'
else 'C'
end
else 'No Grade'
end as Grade
 from student inner join marks on
student.id=marks.id where student.rollno=1 having result='pass';