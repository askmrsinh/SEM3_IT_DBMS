-- Data Manipulation Language (DML)
-- BASIC COMMANDS:
--   INSERT - insert data into a table
--   UPDATE - updates existing data within a table
--   DELETE - deletes all records from a table, the space for the records remain


insert into department
 values
 ('R & D', 1800000000, 'Walkie Talkie', '022-12045678'),
 ('Marketing', 1500000000, 'Doodler', '022-12345347'),
 ('Sales', 1500000000, 'Skyscraper', '022-12345668'),
 ('Advertising', 1200000000, 'Skyscraper', '022-12590678'),
 ('Accounting', 1000000000, 'Underground', '022-12857938'),
 ('Operations', 1300000000, 'Seventh Sky', '022-12345678'),
 ('Human Resources', 1700000000, 'Newalans', '022-10345678'),
 ('Finance', 100000000, 'Underground', '022-19342678'),
 ('Community Wellfare', 10070000, 'Seventh Sky', '022-12733746');
 
insert into employee_2013
 values
 (103, 'Richie', 'Womac', 'M', '29 Jannuary 1988', 'R & D', 1300000.00),
 (118, 'Scottie', 'Kipp', 'F', '16 April 1988', 'Marketing', 1600000.00),
 (100, 'Val', 'Espinal', 'M', '23 June 1989', 'Marketing', 1300000.00),
 (127, 'Maryland', 'Rathjen', 'F', '29 November 1990', 'Sales', 1400000.00),
 (117, 'Ramaya', 'Gupta', 'M', '17 June 1994', 'Sales', 1600000.00),
 (107, 'Sadye', 'Gravatt', 'M', '28 March 1991', 'Advertising', 1500000.00),
 (123, 'Fayed', 'Ahmed', 'F', '22 April 1994', 'Advertising', 1400000.00),
 (125, 'Zandra', 'Lacy', 'F', '26 May 1990', 'Finance', 1600000.00),
 (121, 'Hester', 'Kettner', 'M', '23 July 1993', 'Finance', 1200000.00),
 (120, 'Sadye', 'Laverdiere', 'M', '12 July 1993', 'Operations', 1200000.00),
 (106, 'Dorotha', 'Romo', 'F', '21 December 1993', 'Human Resources', 1500000.00),
 (126, 'Alex', 'Amdro', 'M', '01 Octuber 1995', 'Human Resources', 1300000.00),
 (105, 'Lindsey', 'Cray', 'F', '09 September 1994', 'Accounting', 1400000.00),
 (124, 'Aliza', 'Um', 'F', '16 August 1992', 'Human Resources', 1600000.00),
 (111, 'Azule', 'Sandro', 'M', '15 August 1997','Sales',NULL);


insert into employee_2012
 values
 (127, 'Qndra', 'Mery', 'F', '06 November 1991', 'Marketing', 1400000.00),
 (117, 'Ramaya', 'Gupta', 'M', '17 June 1994', 'Advertising', 1600000.00),
 (107, 'Sadye', 'Gravatt', 'M', '28 March 1991', 'Advertising', 1500000.00),
 (123, 'Fayed', 'Ahmed', 'F', '22 April 1994', 'Sales', 1400000.00),
 (121, 'Pastro', 'Kurt', 'M', '20 April 1994', 'Finance', 1200000.00),
 (121, 'Hester', 'Kettner', 'M', '23 July 1993', 'Finance', 1200000.00),
 (120, 'Zafar', 'Fareeq', 'M', '17 July 1992', 'Operations', 1200000.00),
 (106, 'Dorotha', 'Romo', 'F', '21 December 1993', 'Human Resources', 1500000.00),
 (105, 'Lindsey', 'Cray', 'F', '09 September 1994', 'Accounting', 1400000.00),
 (126, 'Alex', 'Amdro', 'M', '01 Octuber 1995', 'Human Resources', 1300000.00),
 (124, 'Aliza', 'Um', 'F', '16 August 1992', 'Community Wellfare', 1600000.00);

insert into employee_2013
 values(111, 'Azule', 'Sandro', 'M', '15 August 1997','Sales',NULL)
select ID, First_name, Last_name, Gender, DOB, dpt_name, Salary
from employee_2013;

insert into employee_2013
 values
 (140, 'Falin', 'Arkaham', 'F', '17 September 1996','R & D',5000000),
 (141, 'Ashmira', 'Fagon', 'F', '1 July 1997','Accounting',5200000),
 (142, 'Kundan', 'Kaura', 'M', '27 September 1996','Advertising',3000000);
select ID, First_name, Last_name, Gender, DOB, dpt_name, Salary
from employee_2013;

update employee_2013
set Salary=1200000
where Salary is NULL
select ID, First_name, Last_name, Salary
from employee_2013;

update employee_2013
set Salary=Salary + 5000
where Salary > 1300000
select ID, First_name, Last_name, Salary
from employee_2013;

update employee_2013
set Salary=Salary + 10000
where Salary <= 1300000
select ID, First_name, Last_name, Salary
from employee_2013;

update employee_2013
set Salary=case 
    when Salary > 1300000 then Salary + 5000
    else Salary +100000
   end;
select ID, First_name, Last_name, Salary
from employee_2013;

delete from employee_2013
where First_name = 'Azule'
select *
from employee_2013;

delete employee_2013
select *
from employee_2013;
