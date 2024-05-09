create database village;
use village;
create table people(id int not null auto_increment primary key,
name varchar(20) not null,Homeno int not null,
Mobileno varchar(15) not null,work varchar(10) not null);
describe people;
alter table people add gender varchar(10) not null after name;
alter table people add contact varchar(20) not null;
select * from peoples;
alter table people drop column contact;
alter table people rename to peoples;
show tables;
insert into peoples(name,gender,homeno,mobileno,work)
values('Raja','male',1,'8998897070','electric'),
('Rajesh','male',2,'8998890070','electronic'),('ajay','male',3,'8933897070','wireman'),
('anitha','female',4,'8998897167','nurse'),('kayal','female',5,'8988897070','admin'),
('anu','female',6,'8911897070','designer'),('harini','female',7,'8990097070','dancer'),
('karan','male',8,'8999897070','cook');
select gender, count(id) from peoples group by gender;
select * from peoples where gender in('male','female') and name like 'a%' or name  like '%a';
create table attend(aid int not null auto_increment primary key, id int not null,adate date not null,
astatus varchar(10) not null);
select * from attend;
insert into attend(id,adate,astatus) values
(1,'2024-05-01','p'),(1,'2024-05-02','p'),(1,'2024-05-03','p'),(1,'2024-05-04','ap'),
(2,'2024-05-01','ap'),(2,'2024-05-02','p'),(2,'2024-05-03','p'),(2,'2024-05-04','p'),
(3,'2024-05-01','p'),(3,'2024-05-02','p'),(3,'2024-05-03','ap'),(3,'2024-05-04','ap'),
(4,'2024-05-01','ap'),(4,'2024-05-02','p'),(4,'2024-05-03','p'),(4,'2024-05-04','ap'),
(5,'2024-05-01','p'),(5,'2024-05-02','p'),(5,'2024-05-03','p'),(5,'2024-05-04','p'),
(6,'2024-05-01','ap'),(6,'2024-05-02','ap'),(6,'2024-05-03','p'),(6,'2024-05-04','p'),
(7,'2024-05-01','p'),(7,'2024-05-02','p'),(7,'2024-05-03','ap'),(7,'2024-05-04','ap'),
(8,'2024-05-01','ap'),(8,'2024-05-02','p'),(8,'2024-05-03','p'),(8,'2024-05-04','p');
select peoples.name,peoples.gender,peoples.work,peoples.id, attend.adate,attend.astatus 
from peoples inner join attend on peoples.id=attend.id limit  0,10;


