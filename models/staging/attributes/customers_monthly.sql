select 
    date_trunc('month', order_date) as month, 
    count(distinct customer_id) as customers
from {{ ref('stg_orders') }}
group by month