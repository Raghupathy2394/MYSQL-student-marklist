/*  TRIGGER */
create database triger;
use triger;
create table productt(pid int not null auto_increment primary key,
 pname varchar(20) not null,rate int not null);
truncate table productt;
select * from productt;
insert into productt(pname,rate) values('pen',25),('box',10),
('pendrive',500),('mouse',250),('keyboard',10);
create table price_logs(id int not null auto_increment primary key,
pid int not null,price int not null,new_price int not null);
/* CREATE TRIGGER trigger_name
BEFORE UPDATE ON productt
FOR EACH ROW
BEGIN
INSERT INTO PRICE_LOGS(PID,PRICE,NEW_PRICE)
VALUES(OLD.PID,OLD.RATE,NEW.RATE);
END$$ */
select * from price_logs;
select * from productt;
select * from price_logs;