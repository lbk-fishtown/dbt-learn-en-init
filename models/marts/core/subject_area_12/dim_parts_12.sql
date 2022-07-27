{{
    config(
        materialized = 'table'
    )
}}
with part as (

    select * from {{ref('stg_tpch_parts_12')}}

),

final as (
    select 
        part_key,
        manufacturer,
        name,
        brand,
        type,
        size,
        container,
        retail_price
    from
        part
)
select *
from final  
order by part_key
