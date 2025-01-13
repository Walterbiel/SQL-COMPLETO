-- Filtros básicos na tabela de clientes

-- 1. Apenas clientes que são do Brasil ou Mexico
SELECT * 
FROM customers
WHERE COUNTRY = 'Brazil' OR COUNTRY = 'Mexico' 
-- ou
SELECT * 
FROM customers
WHERE COUNTRY in ('Brazil','Mexico')

-- 2.Vendas em determinada região que iniciam com o mesmo número de código postal (8)
SELECT 
order_id,
order_date,
employee_id,
ship_city,
ship_postal_code,
LENGTH(ship_postal_code) AS LEN
FROM orders
WHERE ship_postal_code LIKE '8%' AND LENGTH(ship_postal_code) > 4

-- 3.Fretes entre 10 reais e 25 reais
SELECT 
*
FROM orders
WHERE freight BETWEEN 10 AND 25

--4.Fretes que não estão entre 0 e 10 reais

SELECT 
*
FROM orders
WHERE freight NOT BETWEEN 0 AND 10





