-- creation and destruction

CREATE DATABASE college;
drop database college;
create database shivam;
drop database shivam;
create database college;
use college;
create table student(
roll_no int,
name varchar(30),
age int
);

-- insertion

insert into student
values
(101,"adam",12),
(102,"bob",14),
(103,"casey",11);

-- selection
select * from student;

use college;
create table users(
id int,
age int,
name varchar(30) not null,
email varchar(50) unique,
followers int default 0,
following int,
constraint check (age>=13),
primary key (id)
);

show tables;

create database instagram;
use instagram;

create table posts(
id int primary key,
content varchar(100),
user_id int,
foreign key (user_id) references users (id)
);

use college;
drop table users;

use instagram;
insert into users
values
(1,14,"adam","adam@yahoo.in",123,145),
(2,15,"bob","bob123@gmail.com",200,200),
(3,16,"casey","casey@email.com",300,306),
(4,17,"donald","donald@gmail.com",200,105);
select * from users;
use instagram;
insert into posts (id,content)
values
(101,"Hello World"),
(102,"Bye Bye"),
(103,"Hello Delta");



insert into posts (id,content,user_id)
values
(101,"Hello World",3),
(102,"Bye Bye",1),
(103,"Hello Delta",3);

-- deletion
DELETE FROM posts WHERE id IN (101,102,103);

-- where clause

select name,email from users where followers>100 or following>200;
select age,name,email from users where age in (15,17);
select age,name,followers from users where not followers>200 ;

-- limit
select id,name from users limit 2;

-- order

select name,followers from users order by followers asc; 
select name,followers from users order by followers desc; 

-- aggregate functions

select max(age) from users;
select min(age) from users;
select count(name) from users;
select sum(followers) from users;
select avg(following) from users;

-- group by clause
use instagram;
select followers,count(following) as following_count from users group by followers ;

-- having clause
select age,max(followers) as max_followers from users group by age having max(following)>150;

-- General order
select age,max(followers) as max_followers from users group by age having min(following)>250 order by age desc; 

set sql_safe_updates=0;

update users set followers=600 where age=16;
select * from users;