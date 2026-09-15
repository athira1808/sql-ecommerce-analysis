-- The top 3 product purchased by each customer
with customer_product_spending as (
	select 
		c.customer_id,
        c.name as customer_name,
        p.product_id,
        p.product_name,
        sum(o.amount) as total_spending
	from customers c
    join orders o 
		on c.customer_id = o.customer_id
	join products p
		on o.product_id = p.product_id
	group by 
		c.customer_id,
        c.name,
        p.product_id,
        p.product_name
),

ranked_products as (
	select 
		customer_id,
        customer_name,
        product_name,
        total_spending,
        row_number() over(
			partition by customer_id
            order by total_spending desc
		) as product_rank
	from customer_product_spending
)

select 
	customer_name,
    product_name,
    total_spending,
    product_rank
from ranked_products
where product_rank <=3;
    