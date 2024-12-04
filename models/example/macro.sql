select
    o.Order_ID,
    c.Customer_ID,
    c.customer_name,
    p.product_id,
    p.product_name,
    o.quantity,
    {{get_date_parts('order_date')}} as date_extract
from
    raw.Orders as o
join
    {{ref('stg_customer')}} as c 
    on o.customer_id = c.customer_id
join
    raw.Products as p 
    on o.product_id = p.product_id