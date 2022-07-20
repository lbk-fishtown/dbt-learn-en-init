select 
    date_trunc('month', order_date) as month, 
    count(distinct order_id) as orders
from {{ ref('stg_orders') }}
group by month