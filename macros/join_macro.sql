{% macro join_attributes(unique_key = 'mykey', table_list = ['table_a', 'table_b']) %}



{% for table in table_list %}
    {{ table }}
    join on {{ unique_key }}
{% endfor %}

{% endmacro %}