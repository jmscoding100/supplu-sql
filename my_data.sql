--s is the version that works

--1
select first_name, last_name
from employee
where date_hired <= '2020-12-31';

--1s
select first_name, last_name
from employee
where date_hired < '2020-12-31';



--2
select first_name, last_name, dept_id
from employee
where dept_id = 2;

--2s

select e.first_name, e.last_name, d.dept
from employee e 
join dept d using (dept_id)
where d.dept = 'MARKETING';



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

--5s
select employee_id, sum(products_sold) total_sold
from transaction
group by employee_id
order by total_sold DESC;

--6
select employee_id, sum(amount) tot_amt, count(*) amount
from transaction
group by employee_id;

--6s
select employee_id, sum(amount) total_amt
from transaction
group by employee_id
order by total_amt DESC;


--7 Return the total transaction amount on March 19, 2025
--S
select sum(amount) march_19_sales, date(transaction_date)
from transaction
where date(transaction_date) = '2025-03-19'
group by date(transaction_date)
;


--8 Return the total contract amount
select  sum(amount)
from contract
;

--9 Return the total contract amount for each employee
select employee_id, sum(amount) tot_amt, count(*) amount
from contract
group by employee_id;

--9s
select employee_id, sum(amount) total_contract_sales
from contract
group by employee_id
order by total_contract_sales
;

--10 Return the employee name for each contract
--S
select e.first_name, e.last_name, c.client, c.amount 
from employee e 
join contract c using(employee_id);


--11
--S
select * from contract
where completion_date > '2025-12-31';


--12
--S
select e.first_name, e.last_name, e.title,
    CASE
        when sum(t.amount) is null then 'N/A'
        else sum(t.amount)
        end transaction_sales,
    CASE
        when sum(c.amount) is null then 'N/A'
        else sum(c.amount)
        end contract_salse
from employee e 
LEFT outer join transaction t on e.employee_id = t.employee_id
LEFT outer join contract c on e.employee_id = c.employee_id
group by e.employee_id;