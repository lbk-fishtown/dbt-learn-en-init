with cust as (select customer_key from {{ ref('fct_orders') }} )

,part as (select customer_key, max(part_key) part_key from  {{ ref('order_items') }}
group by customer_key)

select * from cust left join part using(customer_key)