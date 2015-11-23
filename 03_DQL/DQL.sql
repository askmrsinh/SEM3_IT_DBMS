-- Data Query Language (DQL) / Data Retrieval Language (DRL)
-- BASIC COMMANDS:
--   SELECT - retrieve data from the a database


select ID, First_name, Last_name, Gender, DOB, dpt_name, Salary
from employee_2012;

select dpt_name
from employee_2013;

select distinct dpt_name
from employee_2013;

select ID, Last_name, dpt_name
from employee_2013
where dpt_name='Human Resources'

select ID, Last_name, dpt_name, Salary
from employee_2013
where dpt_name='Human Resources' and Salary>=1500000.00;

select ID, Last_name, dpt_name, Salary
from employee_2013
where dpt_name='Human Resources' and Salary<=1500000.00;

select ID,First_name, Last_name, dpt_name
from employee_2013
where dpt_name='Advertising' or dpt_name='Human Resources' or dpt_name='Operations'

select ID, Last_name, dpt_name, Salary*1.5 as Annual_salary 
from employee_2013;

select dpt_name, Budget, Building, Phone
from department;

select *
from department;

select ID,First_name, Last_name, dpt_name
from employee_2013
where dpt_name='Human Resources' or dpt_name='Advertising' or dpt_name='Operations'
order by First_name;

select ID,First_name, Last_name, dpt_name
from employee_2013
where dpt_name='Human Resources' or dpt_name='Advertising' or dpt_name='Operations'
order by dpt_name asc, First_name asc

select Last_name, Phone
from employee_2013, department
where employee_2013.dpt_name=department.dpt_name;

select Last_name, Phone
from employee_2013 as E, department as D
where E.dpt_name=D.dpt_name;

select dpt_name,Budget
from  department
where Budget between 1300000000 and 1600000000;

select dpt_name,Budget
from  department
where Budget not between 1300000000 and 1600000000;

(select ID,first_name
 from employee_2012 
 where dpt_name='Human Resources')
union
(select ID, first_name
 from employee_2013 
 where dpt_name='Human Resources');

(select ID,first_name as employed_before_2013
 from employee_2012 
 where dpt_name='Human Resources')
intersect
(select ID, first_name as employed_before_2013
 from employee_2013 
 where dpt_name='Human Resources');

select UPPER(dpt_name)
from department;

select LOWER(dpt_name)
from department;

select LEN(dpt_name) as dpt_name_length
from department;

select RIGHT(DOB,4) as Year_Born, First_name, Last_name
from employee_2012;

select LEFT(Budget,3) as Budget_in_Cr, dpt_name
from department;

select dpt_name, MAX(Salary) as Maximum_Pay
from employee_2012
group by dpt_name;

select dpt_name, MIN(Salary) as Minimum_Pay
from employee_2012
group by dpt_name;

select dpt_name, SUM(Salary) as Department_Cost
from employee_2012
group by dpt_name;

select dpt_name, AVG(Salary) as Average_Pay
from employee_2012
group by dpt_name;

select COUNT(*) as #_of_employees_in_2012
from employee_2012;

select dpt_name, AVG(Salary) as Average_Pay
from employee_2012
group by dpt_name
having AVG(Salary)>1300000;

select ID, Last_name, first_name
from employee_2013 
where dpt_name is not NULL and
 ID in(select ID
    from employee_2012 
    where dpt_name is not NULL);

select ID, Last_name, first_name
from employee_2013 
where dpt_name is not NULL and
 ID not in(select ID
    from employee_2012 
    where dpt_name is not NULL);

select dpt_name, Last_name, first_name
from employee_2013 
where dpt_name not in ('Human Resources', 'Marketing');

select employee_2013.Last_name, employee_2013.ID, employee_2012.dpt_name
from employee_2013 inner join employee_2012
on employee_2013.dpt_name=employee_2012.dpt_name;

select employee_2013.Last_name, employee_2013.ID, employee_2012.dpt_name
from employee_2013 left join employee_2012
on employee_2013.dpt_name=employee_2012.dpt_name;

select employee_2013.Last_name, employee_2013.ID, employee_2012.dpt_name
from employee_2013 right join employee_2012
on employee_2013.dpt_name=employee_2012.dpt_name;

select employee_2013.Last_name, employee_2013.ID, employee_2012.dpt_name
from employee_2013 full join employee_2012
on employee_2013.dpt_name=employee_2012.dpt_name;
