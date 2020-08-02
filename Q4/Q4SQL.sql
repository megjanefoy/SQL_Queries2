Select order_id, SUM(CAST(unit_price * quantity * (1 - discount) as DECIMAL(10,2)))
FROM order_details
group by order_id
order by order_id