-- The highest-spending customer in each city.
with customer_spending as (
	select 
		c.customer_id,
		c.name,
        c.city,
        sum(o.amount) as total_spending
	from customers c
    join orders o
		on c.customer_id = o.customer_id
	group by c.customer_id
),
ranked_customers as (
	select 
		name,
        city,
        total_spending,
        row_number() over(
			partition by city
            order by total_spending desc
        ) as city_rank
	from customer_spending
)

select
	name as customer_name,
    city,
    total_spending
from ranked_customers
where city_rank = 1;
