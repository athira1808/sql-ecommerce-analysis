-- Customer Spending Category
with customer_spending as (
	select 
		c.customer_id,
		c.name,
        sum(o.amount) as total_spending
	from customers c
    join orders o
    on c.customer_id = o.customer_id
    group by customer_id
)

select 
	 name,
     total_spending,
     case
		when total_spending >=2000 then 'High value'
        when total_spending >=1000 then 'Medium Value'
        else 'Low Value'
	end as customer_category
from customer_spending;
