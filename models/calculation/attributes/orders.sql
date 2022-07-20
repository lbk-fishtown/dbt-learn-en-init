with cust as (select customer_key from {{ ref('derived_customers') }} )


,orders as (select  customer_key 
,max(ORDER_DATE) as latest_order_date
,sum(GROSS_ITEM_SALES_AMOUNT) as total_spent 
,max(clerk_name) as fulfilled_by
from {{ ref('fct_orders') }} 
group by customer_key
)

select * from cust left join orders using(customer_key)