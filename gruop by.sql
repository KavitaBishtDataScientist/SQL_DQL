
select min(salary) from employee;

select min(age) from employee;

select min(emp_name) from employee;

select min(salary)
from employee
where department='sales';

select  min(salary)
from employee
where age > 25;

select max(emp_name) from employee;

select max(salary) from employee;

select max(age) from employee;

select max(salary)
from employee
where department='it';

select max(salary), min(salary)
from employee;

select count(*) from employee;

select count(salary) from employee;

update employee
set city= null
where emp_id in (1,2);

select count(salary) from employee;

select count(emp_name) from employee
where age<26;


select count(emp_name) from employee
where city='delhi';


select count(emp_name) from employee
where gender = 'female';

select distinct city from employee;


select count(distinct age) from employee;

select count(distinct city) from employee;

select count(*)
from employee
where salary> 60000;

SELECT SUM(salary)
FROM employee;

select sum(age)
from employee;

select department, sum(salary)  
from employee
group by department;

select sum(distinct salary)
from employee;

select avg(salary)
from employee;

select department ,avg(salary)
from employee
group by department;

select avg(salary)
from employee
where department='admin';

select avg (distinct salary) from employee;


select department, sum(salary)
from employee
group by department
order by department;

select gender ,avg(salary)
from employee
group by gender;

select department ,count('gender')
from employee
group by department;

select department,count(*)
from employee
where gender='female'
group by department;

select department ,max(salary)
from employee
where department not in ('hr' , 'finance')
group by department
order by department;


select department,avg(salary),avg(age),max(salary)
from employee
where gender='female'
group by department;

select city,count(*)
from employee
where department='it'
group by city;

-- using group by with multiple column:

select department,city ,count(*)
from employee
group by department,city;

select city,department,count(*)
from employee
group by city,department
order by city;

select department,shift,count(*)
from employee
group by department,shift
order by department;

select department,shift,city, count(*)
from employee
group by department,shift,city
order by department; 

select city,avg(salary) as avg
from employee
group by city
having avg(salary) > 70000;

select city,avg(salary) as avg
from employee
group by city;

select department, min(salary) 
from employee
group by department
having min(salary)>50000;

select department ,count(emp_id)
from employee
group by department
having count(emp_id)>15;

select city,count(gender)
from employee
where gender='female'
group by city
having count(gender)>5;

select city,count(gender)
from employee
group by city
having count(gender)>5;

select  department,sum(salary)
from employee
group by department
having sum(salary)>1500000;




select department,count(emp_id),avg(salary)
from employee
where gender='male'
group by department
having count(emp_id)>10 and avg(salary)>50000;

select department ,max(salary),max(salary)
from employee
group by department
having max(salary)>= 2*min(salary);