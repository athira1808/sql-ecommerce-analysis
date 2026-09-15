-- Rank Customers according to spending
with customer_spending as (
	select 
		c.customer_id,
        c.name,
        sum(o.amount) as total_spending
	from customers c
    join orders o
    on c.customer_id = o.customer_id
    group by c.customer_id
)

select 
	 name,
    total_spending,
    RANK() OVER (
        ORDER BY total_spending DESC
    ) AS spending_rank
FROM customer_spending;
