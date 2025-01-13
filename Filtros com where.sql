-- Filtros básicos na tabela de clientes

-- Apenas clientes que são do Brasil ou Mexico
SELECT * 
FROM customers
WHERE COUNTRY = 'Brazil' OR COUNTRY = 'Mexico' 

-- Vendas em determinada região que iniciam com o mesmo número de código postal (8)
SELECT 
order_id,
order_date,
employee_id,
ship_city,
ship_postal_code,
LENGTH(ship_postal_code) AS LEN
FROM orders
WHERE ship_postal_code LIKE '8%' AND LENGTH(ship_postal_code) > 4




