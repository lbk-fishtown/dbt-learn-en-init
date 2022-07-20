{% macro join_attributes(unique_key = 'mykey', table_list = ['table_a', 'table_b', 'table_c']) %}


select * from {{ table_list[0] }}
{% for i in range(1, table_list|length) %}
    join {{ table_list[i] }} on {{ table_list[i-1] }}.{{ unique_key }} = {{ table_list[i] }}.{{ unique_key }} 
{% endfor %}    


{% endmacro %}