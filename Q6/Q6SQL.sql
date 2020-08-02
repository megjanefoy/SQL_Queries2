SELECT cat.category_name, prod.product_name, prod.quantity_per_unit, prod.units_in_stock, prod.discontinued
FROM products prod
JOIN categories cat on cat.category_id = prod.category_id
WHERE prod.discontinued = 0
ORDER BY cat.category_name