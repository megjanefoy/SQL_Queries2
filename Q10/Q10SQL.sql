SELECT e.title_of_courtesy, e.first_name, e.last_name
FROM employees e
WHERE e.employee_id NOT IN (select em.employee_id
				  from employees em
				  where em.title_of_courtesy = 'Ms.' OR em.title_of_courtesy = 'Mrs.')