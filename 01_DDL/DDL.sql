-- Data Definition Language (DDL)
-- BASIC COMMANDS:
--   CREATE - to create objects in the database
--   ALTER - alters the structure of the database
--   DROP - delete objects from the database


create table department
	(	dpt_name	    char(18),
		Budget		    money,
		Building	    varchar(14),
		Phone		      varchar(12));

create table employee_2013
	(	ID					  int, 
		First_name		varchar(12),
		Last_name			varchar(12),
		Gender				char(2),
		DOB					  varchar(20),
		dpt_name			char(18),
		Salary				numeric(9,2));

create table employee_2012
	(	ID					  int, 
		First_name		varchar(12),
		Last_name			varchar(12),
		Gender				char(2),
		DOB				    varchar(20),
		dpt_name			char(18),
		Salary				numeric(9,2));

alter table department
drop column Phone
select *
from department;

alter table department
alter column Budget int
select *
from department;

alter table department
add dpt_ID int
select *
from department;

drop table employee_2013;
select *
from employee_2013; 

drop table employee_2013,employee_2012;
drop table department;


create table department
	(	dpt_name	    char(18),
		Budget		    money,
		Building	    varchar(14),
		Phone		      varchar(12));

create table employee_2013
	(	ID					  int, 
		First_name		varchar(12),
		Last_name			varchar(12),
		Gender				char(2),
		DOB					  varchar(20),
		dpt_name			char(18),
		Salary				numeric(9,2));

create table employee_2012
	(	ID					  int, 
		First_name		varchar(12),
		Last_name			varchar(12),
		Gender				char(2),
		DOB				    varchar(20),
		dpt_name			char(18),
		Salary				numeric(9,2));
