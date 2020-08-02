Select o.ship_country, e.last_name, e.first_name,  o.shipped_date, od.order_id, SUM(CAST(unit_price * quantity * (1 - discount) as DECIMAL(10,2))) as sales_amount
FROM employees as e
JOIN orders o on o.employee_id = e.employee_id
JOIN order_details od on od.order_id = o.order_id
group by o.ship_country, e.last_name, e.first_name,  o.shipped_date, od.order_id
order by e.last_name