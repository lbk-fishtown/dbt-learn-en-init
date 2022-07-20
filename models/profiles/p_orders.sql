{{
    config(
        materialized='incremental'
    )
}}

{{ dbt_profiler.get_profile(relation=ref("fct_orders")) }}
