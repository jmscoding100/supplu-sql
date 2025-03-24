--1
select first_name, last_name
from employee
where date_hired <= '2020-12-31';

--2
select first_name, last_name, dept_id
from employee
where dept_id = 2;

--3
select first_name, last_name, title
from employee
where salary between 40000 and 80000;

--4
select  sum(products_sold)
from transaction
;

--5
select employee_id, products_sold
from transaction;

--6
select employee_id, sum(amount) tot_amt, count(*) amount
from transaction
group by employee_id;

--7 Return the total transaction amount on March 19, 2025



--8 Return the total contract amount
select  sum(amount)
from contract
;

--9 Return the total contract amount for each employee
select employee_id, sum(amount) tot_amt, count(*) amount
from contract
group by employee_id;

--10 Return the employee name for each contract





--11





--12