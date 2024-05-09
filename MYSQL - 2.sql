use village;
show tables;
select * from peoples;
alter table peoples add column cid int not null auto_increment;
alter table peoples drop column cid;
select * from attend;
select * from attend where id=3;
select id,count(adate) as working from attend group by id;
select id, count(adate) as working ,count(if(astatus='p',1,null)) as present ,
count(if(astatus='ap',1,null)) as absent from attend group by id;
select peoples.name,peoples.id,attend.adate,attend.astatus from peoples inner join
attend on peoples.id=attend.id;
select gender,count(id) from peoples group by gender;
select name,count(id) from peoples group by id;
select * from attend where id=3;
/*       create trigger trigger name,trigger time,trigger event
on table name
for each row
begin
insert into pricelogs(id,rate,new rate) values(old.id,old.rate,new rate);
end$$     */