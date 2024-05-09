create database advance;
use advance; 
create table students( id int not null auto_increment primary key,
name varchar(10) not null,city varchar(10) not null,contact varchar(20)
not null,cid int not null,rollno int not null);
describe students;
select * from students;
truncate table students;
insert into students(name,city,contact,cid,rollno) values
('rahman','chennai','9876789870',1,111),('rana','selam','9875789870',1,112),
('akash','trichy','9876782070',2,113),('alex','karur','9876189870',2,114),
('ravi','goa','9876739870',3,115),('elango','kerala','9876719870',3,116),
('nethaji','palani','9876786870',4,117),('kumar','mannai','9800789870',4,118),
('murugan','madura','9876339870',5,119),('kapil','thanjai','9876789870',5,121);
create table course(cid int not null auto_increment primary key, 
cname varchar(10) not null);
insert into course(cname) values('MCA'),('MBA'),('BCA'),('BA'),('Bsc');
select * from course;
create table marks(mid int not null auto_increment primary key, id int not null, 
M1 int not null, M2 int not null, M3 int not null);
insert into marks(id,M1,M2,M3) values(1,50,60,70),(2,70,80,90),(3,25,45,86),
(4,30,60,70),(5,50,80,90),(6,65,45,86),(7,20,60,70),(8,70,30,90),(9,25,55,86),(10,90,99,97);
select * from marks;
alter table marks add column total int not null;
update marks  set total=M1+M2+M3;
delete from marks where column name total;
select * from course;
select * from students;
select students.name,students.rollno ,course.cname,marks.M1,marks.M2,marks.M3 from students 
inner join course on students.cid=course.cid
inner join marks on students.id=marks.id;
select students.id,students.name,students.rollno ,course.cname,marks.M1,marks.M2,marks.M3,  
(marks.M1+marks.M2+marks.M3) as Total ,round((marks.M1+marks.M2+marks.M3)/3,0) as AVERAGE,
case 
when M1>=35 and M2>=35 and M3>=35 then 'pass'
else 'fail'
end RESULT,
case 
when M1>=35 and M2>=35 and M3>=35 then 
    case
     when round((marks.M1+marks.M2+marks.M3)/3,0)>=90
     and round((marks.M1+marks.M2+marks.M3)/3,0)<=100 then 'A'
      when round((marks.M1+marks.M2+marks.M3)/3,0) >=80 
      and round((marks.M1+marks.M2+marks.M3)/3,0)<=89 then 'B'
else 'c'  
end 
else 'no grade'
end as GRADE from students
inner join course on students.cid=course.cid
inner join marks on students.id=marks.id
 where course.cname='MCA' having Result='pass'
 and (average >=60 and average <=90);
 
create view reports as
select students.id,students.name,students.rollno ,course.cname,marks.M1,marks.M2,marks.M3,  
(marks.M1+marks.M2+marks.M3) as Total ,round((marks.M1+marks.M2+marks.M3)/3,0) as AVERAGE,
case 
when M1>=35 and M2>=35 and M3>=35 then 'pass'
else 'fail'
end RESULT,
case 
when M1>=35 and M2>=35 and M3>=35 then 
    case
     when round((marks.M1+marks.M2+marks.M3)/3,0)>=90
     and round((marks.M1+marks.M2+marks.M3)/3,0)<=100 then 'A'
      when round((marks.M1+marks.M2+marks.M3)/3,0) >=80 
      and round((marks.M1+marks.M2+marks.M3)/3,0)<=89 then 'B'
else 'c'  
end 
else 'no grade'
end as GRADE from students
inner join course on students.cid=course.cid
inner join marks on students.id=marks.id;
show tables;
show full tables;
select * from reports;  /*update the marks using rollno */
select  students.name,students.rollno,marks.M1,marks.M2,marks.M3 from 
students inner join marks on students.id=marks.id;
update marks inner join students on students.id=marks.id
set M1=60, M2=80, M3=90 where rollno=111;
select * from students,marks ,course where students.id=marks.id and
students.cid=course.cid;
