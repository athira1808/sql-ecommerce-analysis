-- Top 2 Customers according to the total spending 
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

ranked_customers as (
	select 
		name,
		total_spending,
        row_number() over(
			order by total_spending desc
        ) as ranking
	from customer_spending
)

select 
	name,
    total_spending
from ranked_customers
where ranking <=2;
