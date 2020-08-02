SELECT ord.ship_name, ord.ship_address, ord.ship_city, ord.ship_region, ord.ship_postal_code, ord.ship_country, ord.customer_id, ord.freight,
	   e.first_name as employee_fname, e.last_name as employee_lname, supp.company_name, supp.address as company_address, supp.city as company_city, 
	   supp.region as company_region, supp.postal_code as company_postcode, supp.country as company_county, 
	   ord.order_id, ord.order_date, ord.required_date, od.product_id, prod.product_name, od.unit_price, od.quantity, 
	   CAST(od.unit_price * od.quantity * (1 - od.discount) as DECIMAL(10,2)) as extended_price
FROM employees e, orders ord
JOIN order_details od on od.order_id = ord.order_id
JOIN products prod on prod.product_id = od.product_id
JOIN suppliers supp on supp.supplier_id = prod.supplier_id
WHERE ord.employee_id = e.employee_id