create table student(
rno int unsigned not null primary key,
name varchar(50),
class int unsigned);

create table info(
rno int unsigned not null primary key,
age int unsigned,
place varchar(50));

insert into student values(1,'nagesh',11);
insert into student values(2,'nageshk',12);
insert into student values(3,'bharath',11);
insert into student values(4,'thyagu',12);
insert into student values(5,'naveen',11);

insert into info values(1,17,'Bangalore');
insert into info values(2,18,'Bangalore');
insert into info values(3,17,'Bangalore');
insert into info values(4,18,'Bangalore');

select * from student;
select * from info;

select student.name,student.class,info.age,info.place from student inner join info on student.rno=info.rno;
select student.name,student.class,info.age,info.place from student left join info on student.rno=info.rno;
select student.name,student.class,info.age,info.place from student right join info on student.rno=info.rno;
select student.name,student.class,info.age,info.place from student join info on student.rno=info.rno;

