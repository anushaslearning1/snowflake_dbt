select
-- from raw.orders
o.*,
--from raw.customer
c.*,
--from raw.product
p.*,
order_selling_price - order_cost_price as profit 

from {{ ref('orders') }} as o
left join 
{{ ref('customer') }} as c
on 
c.customerID = o.customer_id
left join
{{ ref('product') }} as p
on p.productid = o.product_id