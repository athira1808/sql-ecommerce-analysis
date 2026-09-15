-- Customers Above Average Spending
with customer_spending as (
	select 
		c.customer_id,
		c.name,
		sum(o.amount) as total_spending
    from customers c
    join orders o
    on c.customer_id = o.customer_id
    group by c.customer_id
),

Avg_spending as (
	select 
		avg(total_spending) as avg_spending
    from customer_spending
)

select 
	cs.name,
    cs.total_spending
from customer_spending cs
cross join Avg_spending a
where cs.total_spending > a.avg_spending;
