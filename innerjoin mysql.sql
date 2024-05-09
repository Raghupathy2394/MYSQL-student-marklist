create database raj;
create table studentt(
id int not null auto_increment, name varchar(20) not null,
primary key(id));
alter table studentt add city varchar(25) not null after name;
alter table studentt add age varchar(10) not null;
show tables;
describe studentt;
select * from studentt;
truncate table studentt;
insert into studentt(name,city,age) values('raghu','tnj','29'),
('ravi','tnj','30'),('raj','tnj','31'),('ragav','tnj','30'),
('guru','mdrs','29'),('guna','mdrs','32'),('alex','pkt','25'),
('kavi','pkt','30'),('vimal','mdrs','27'),('mani','pkt','30');
update studentt set city='hosur', name='vino' where id=9;
select name,age from studentt;
select name,age,city from studentt where city='tnj';
select name,age,city from studentt where city='mdrs' or city='pkt' or city='tnj'and age>=25;
select name,age,city from studentt where name not like '%a%';
select name,age,city from studentt where city='mdrs' or city='pkt'
 or city='tnj'and age>=25 order by city;
 select distinct city from studentt;
 select count(distinct city) as totalcity from studentt;
 select count(name) from studentt;
 select *  from studentt order by id desc limit 1,12;
 select min(age) from studentt;
 select round(avg(age))  as averageage from studentt;
 select sum(age) as totalage from studentt;
 select * from studentt;
 select city ,count(id) from studentt group by city;
 select * from studentt where city not  in('hosur' , 'mdrs');
 select name from studentt where name not like '%a%';
 select name,age from studentt where age not  between 26 and 35 order by age;
 select name,age from studentt where age between 26 and 35 order by age;
create table attendd(aid int not null auto_increment,id int not null,
adate date not null,astatus varchar(20) not null,primary key(aid));
describe attendd;
truncate table attendd;
select * from attendd;
select * from studentt;
insert into attendd(id,adate,astatus) values (1,'2015-01-01','p'), 
(2,'2015-01-01','a'),(3,'2015-01-01','p'),(4,'2015-01-01','a'),
(5,'2015-01-01','p'),(6,'2015-01-01','a'),(7,'2015-01-01','p'),
(8,'2015-01-01','p'),(9,'2015-01-01','p'),(10,'2015-01-01','a');
select * from attendd where id=3;
select id, count(adate) as working from attendd group by id;
select id,count(adate) as working ,count(if(astatus='p',1,null)) 
as present from attendd group by id;
select studentt.name,studentt.city,studentt.age,
  attendd.adate,attendd.astatus from studentt
  inner join attendd on studentt.id=attendd.id;
 select * from attendd where id=6;
create table employ(id int not null auto_increment,name varchar(25) not null,
design varchar(20) not null,doj date not null,primary key(id));
select *from employ;
insert into employ(name,design,doj) values('kapil','manager','2015-05-05'),
('dev','ast.manager','2015-05-05'),('ravi','supervisor','2015-05-05'),
('kannan','engineer','2015-05-05'),('kumar','helper','2015-06-05');
create table salary(sid int not null auto_increment,id int not null,
salary varchar(15) not null,
sdate date not null,primary key(sid));
select * from salary;
truncate table salary;
insert into salary(id,salary,sdate) values(1,'100000','2015-06-01'),
(2,'70000','2015-06-01'),(3,'50000','2015-06-01'),(4,'40000','2015-06-01');
select * from salary;
select employ.name,employ.design,employ.doj,salary.salary,salary.sdate
 from employ inner join salary on employ.id=salary.id;
 select employ.name,employ.design,employ.doj,salary.salary,salary.sdate
 from employ right join salary on employ.id=salary.id;
 select employ.name,employ.design,employ.doj,salary.salary,salary.sdate
 from employ left join salary on employ.id=salary.id;
 select salary from salary where id =3;
select name ,city from studentt;
select * from studentt;
select name,city, 
( 
case
 when city='tnj' then 100
when city='mdrs' then 300
when city='hosurr' then 350
when city='pk' then 200
else 0
end 
 ) as amt from studentt;
 update studentt set city='madurai' WHERE studentt.city='pkt';
