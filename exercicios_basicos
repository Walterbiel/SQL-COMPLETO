--1. Vendedor que mais vende por faturamento e quantidade
select
distinct v.id_vendedor ,
sum(v.preco * v.quantidade) as faturamento
from vendas v
group by v.id_vendedor
order by faturamento DESC

--2. Vendedor que mais vendeu nos últimos 12 meses
select
distinct v.id_vendedor ,select
v.meio_pagamento , ROUND(sum(parcelamento) / count(meio_pagamento)) as media
from
vendas v
where v.meio_pagamento = 'cartao_credito'
group by v.meio_pagamento 
sum(v.preco * v.quantidade) as faturamento
from vendas v
--where v.data_venda > '2025-05-18'
group by v.id_vendedor
order by faturamento DESC 

--3. Na tabela de vendedores, terá a data de início do vendedor. Trazer os 10 vendedores mais antigos da empresa e qual a venda deles nos últimos 24 meses
select
distinct vend.id , 
vend.nome_vendedor , vend.data_admissao , sum(v.preco * v.quantidade)
from
vendedores vend 
left join vendas v 
on vend.id = v.id_vendedor 
group by vend.id , vend.nome_vendedor , vend.data_admissao
order by data_admissao asc 
limit 10

--4. Faturamento por produto (preço x quantidade)
select
sum(v.quantidade * v.preco ) as faturamento , p.categoria 
from
vendas v
left join produtos p 
on v.id_produto = p.id_produto
group by p.categoria
order by faturamento DESC

--5.1. Meio de pagamento mais utilizado
select
v.meio_pagamento , count(v.meio_pagamento) as contagem
from
vendas v
where v.preco > 500
group by v.meio_pagamento
order by contagem DESC

--5.2. Nos pagamentos em crédito, qual o número médio de parcelas das compras?
select
v.meio_pagamento , ROUND(sum(parcelamento) / count(meio_pagamento)) as media
from
vendas v
where v.meio_pagamento = 'cartao_credito'
group by v.meio_pagamento 

