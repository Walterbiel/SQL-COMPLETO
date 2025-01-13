-- Junções em tabelas para relacionamentos (left join,Right join, inner join, full join)

-- Orders com orders details para retornar o valor total da quantidade vendida e desconto por cliente e produto
SELECT
o.customer_id,
od.product_id,
SUM(od.quantity) AS "Quantidade total",
SUM(od.discount) AS "Desconto total"
FROM orders o
LEFT JOIN order_details od ON od.order_id = o.order_id
GROUP BY 
o.customer_id,
od.product_id
ORDER BY SUM(od.quantity) DESC
