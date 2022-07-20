{% set statuses=['returned', 'completed', 'return_pending', 'shipped', 'placed'] %}

select 
    date_trunc('month', order_date) as month, 
    {% for status in statuses %}
        sum(iff( status = '{{ status }}', 1, 0 )) as {{ status }}_count
        {% if not loop.last %},{% endif %}
    {% endfor %}
from {{ ref('stg_orders') }}
group by month