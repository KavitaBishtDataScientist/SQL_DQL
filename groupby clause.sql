select * from employee;

select city, count(emp_id) as ' no. of emp on each city'
from employee
group by city;

select department, avg(salary) as ' average salary'
from employee
group by department;

select department, sum(salary) 
from employee
group by department;

select department, count(emp_id) 
from employee
group by department;

select city, avg(age) 
from employee
group by city;

select department, min(salary) 
from employee
group by department;

select department, max(salary) 
from employee
group by department;

select city , gender, avg(age) 
from employee
group by city , gender;

select shift, count(*) 
from employee
group by shift;

select experience, avg(salary) 
from employee
group by experience;

select experience, avg(salary) 
from employee
group by experience
order by experience;


