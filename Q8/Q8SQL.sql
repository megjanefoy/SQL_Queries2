SELECT prod.product_name, prod.unit_price
FROM products prod, (select CAST(AVG(prods.unit_price) as DECIMAL (5,2))
	  from products prods) as avgs
WHERE prod.unit_price > avgs.avg
order by unit_price