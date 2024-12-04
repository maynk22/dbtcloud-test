select count(*) from
{{ref('stg_orders')}} as o 
where DATE(order_date) = CURRENT_DATE()
having count(*) > 0
