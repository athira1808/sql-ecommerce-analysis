-- Find the total spending of each customer.
select 
c.name,
sum(o.amount) as total_spending
from customers c
join orders o
on c.customer_id = o.customer_id
group by c.customer_id;