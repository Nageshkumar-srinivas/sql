create table student(
reg_no int unsigned not null,
name varchar(50) not null,
branch varchar(50) not null);

insert into student values(0001,'Ram','CSE'),(0002,'Hari','MECH'),(0003,'Pradeep','EEE'),(0004,'Deepak','ETC');
select reg_no from student where name='Pradeep';
select name,branch from student;
select count(row_count()) from student;
alter table student add column address varchar(50) not null;