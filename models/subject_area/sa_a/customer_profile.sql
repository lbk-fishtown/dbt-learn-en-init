
  select * from 
 {{ ref('derived_customers') }} 
 {{join_attributes('customer_key', ['orders' , 'part_key', 'shipments', 'supplier_key'])}}