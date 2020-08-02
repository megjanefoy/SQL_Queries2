SELECT cust.city as customer_city, supp.city as suppier_city, cust.company_name as customer_company, cust.contact_name as customer_contact, supp.company_name as supplier_company, supp.contact_name as supplier_contact
FROM customers cust
FULL OUTER JOIN suppliers supp on supp.city = cust.city
order by cust.city, supp.city