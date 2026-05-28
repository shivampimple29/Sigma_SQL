create database if not exists college;
use college;
create table student(
roll_no int primary key,
name varchar(30) not null,
city varchar(30),
marks int 
);

insert into student values 
(110,"adam","Delhi",76),
(108,"bob" ,"Mumbai" ,65 ),
(124,"casey" ,"Pune" ,94 ),
(112,"duke" ,"Pune" , 80); 

select * from student;
select * from student where marks>75;
-- select distinct city from student;
select city from student group by city;
select city,max(marks) as max_marks from student group by city;
select avg(marks) from student ;

alter table student add column grade varchar(5) ;
update student 
-- set grade="O" where marks>80 ;
-- set grade="A" where marks between 71 and 80;
set grade="B" where marks between 60 and 70;