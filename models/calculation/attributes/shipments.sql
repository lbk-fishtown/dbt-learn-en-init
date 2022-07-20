with cust as (select customer_key from {{ ref('fct_orders') }} )

,part as (select customer_key, max(SHIP_DATE) latest_shipment_date, max(SHIP_MODE) latest_shipment_mode  from  {{ ref('order_items') }}
group by customer_key)

select * from cust left join part using(customer_key)