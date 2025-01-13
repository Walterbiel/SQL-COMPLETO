--Consultas para análises:

--Consulta simples com filtro para retorno do cliente e preço de frete médio:
SELECT 
    customer_id,
    AVG(freight) AS preco_medio_frete
FROM 
    orders
GROUP BY 
    customer_id
ORDER BY AVG(freight) DESC;