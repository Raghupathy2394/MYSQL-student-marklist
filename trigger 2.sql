create database shop;
use shop;
create table products(id int not null auto_increment primary key,
pname varchar(20) not null,price int not null);
insert into products(pname,price) values('pen',30),('pensil',10),('keyboard',250),('pendrive',300),('mouse',120);
select * from products;
create table price_logs(pid int not null auto_increment primary key,id int not null,price int not null,
new_price int not null);
truncate price_logs;
select * from price_logs;
 /* CREATE TRIGGER product_after_update
after update ON products
FOR EACH ROW
BEGIN
insert into price_logs(id,price,new_price) values(old.id,old.price,new.price);
end$$  */
insert into products values(3,'keyboard',250);
select * from price_logs;