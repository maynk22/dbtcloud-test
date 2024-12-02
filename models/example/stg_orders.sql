select
    o.Order_ID,
    c.Customer_ID,
    c.customer_name,
    p.product_id,
    p.product_name,
    o.order_date,
    o.quantity
from
    raw.Orders as o
join
    {{ref('stg_customer')}} as c 
    on o.customer_id = c.customer_id
join
    raw.Products as p 
    on o.product_id = p.product_id
    