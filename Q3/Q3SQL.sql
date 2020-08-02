Select product_id, product_name, unit_price
FROM products
WHERE unit_price > 15 AND unit_price < 25
ORDER BY product_name

