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

/* Passo a passo da consulta
1. Seleção das colunas
customer_id: Identificador único de cada cliente.
AVG(freight) AS preco_medio_frete: Calcula a média dos valores da coluna freight (preço de frete) para cada cliente e atribui o nome preco_medio_frete à coluna resultante.
2. Agrupamento dos dados
GROUP BY customer_id: Agrupa os registros por cliente, de forma que a função de agregação AVG calcule a média de frete para cada grupo (ou seja, cada cliente).
3. Ordenação dos resultados
ORDER BY AVG(freight) DESC: Ordena os resultados pela média de frete em ordem decrescente (DESC), exibindo primeiro os clientes com maior preço médio de frete.
