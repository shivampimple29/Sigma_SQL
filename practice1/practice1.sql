-- Q1
create database if not exists college;
use college;

create table Teacher(
id int primary key,
name varchar(30) ,
subject varchar(30) ,
salary varchar(30)
);
alter table Teacher
modify salary int;

insert into Teacher values 
(23,"ajay","math",50000),
(47,"bharat","english",60000),
(18,"chetan","chemsitry",45000),
(9,"divya","physics",75000);

select * from Teacher;

-- Q2
select * from Teacher where salary>55000;
alter table Teacher change column salary ctc int ;
set sql_safe_updates=0;
update Teacher set ctc=ctc*1.25 ;
alter table Teacher add column city varchar(30) default "Gurgaon";
alter table Teacher drop column ctc ;