create table regions(
region_id int unsigned not null primary key,
region_name  varchar(20));

create table countries(
country_id char not null primary key,
country_name varchar(20),
region_id int unsigned not null);
		
create table locations(
location_id int unsigned not null auto_increment primary key,
street_address varchar(20),
postal_code int,
city varchar(20) not null,
state_province varchar(20),
country_id char not null);

create table departments(
department_id int unsigned not null primary key,
department_name  varchar(20) not null,
manager_id int unsigned,
location_id int unsigned);

create table jobs(
job_id int unsigned not null primary key,
job_title varchar(20) not null,
min_salary decimal unsigned,
max_salary decimal unsigned);

create table employees(
employee_id int unsigned not null primary key,
first_name varchar(20) not null,
last_name varchar(20) not null,
email varchar(20) not null,
phone_number int unsigned not null,
hire_date date not null,
job_id int unsigned not null,
salary decimal not null,
commission_pct decimal,
manager_id int unsigned,
department_id int unsigned);

create table job_history(
employee_id int unsigned not null,
start_date date not null,
end_date date not null,
job_id int unsigned not null,
department_id int unsigned not null);

insert into regions values (1,'europe');

insert into countries values (1,'India',123);

insert into locations values (1,'27 kamalanagar',560079,'Bangalore','bangalore urban',1);

insert into departments values (1,'Administrative',100,1200);

insert into jobs values (1,'vice president',15000,30000);

insert into employees values (1,'nagesh','kumar','nagesh7@gmail.com',763,STR_TO_DATE('17-jun-2000','%d-%M-%Y'),123,30000,null,null,90);

alter table job_history add primary key(employee_id,start_date);
insert into job_history values (1,str_to_date('01-jan-1947','%d-%M-%Y'),str_to_date('01-jan-2047','%d-%M-%Y'),12,123);

select * from locations;
select * from employees;
select * from departments;
select * from countries;
select * from job_history;
select * from jobs;
select * from regions;

alter table countries add foreign key(region_id) references regions(region_id);

alter table locations add foreign key(country_id) references countries(country_id);

alter table departments add foreign key(location_id) references locations(location_id);

alter table employees add foreign key(job_id) references jobs(job_id);
alter table employees add foreign key(department_id) references departments(department_id);

alter table job_history add foreign key(employee_id) references employees(employee_id);
alter table job_history add foreign key(job_id) references jobs(job_id);
alter table job_history add foreign key(department_id) references departments(department_id);