Tipos de JOIN's

### 1. INNER JOIN
O INNER JOIN retorna apenas as linhas onde há correspondência em ambas as tabelas. Se não houver correspondência, a linha será descartada.

SELECT *
FROM tabela1 t1
INNER JOIN tabela2 t2
ON t1.chave = t2.chave;

### 2. LEFT JOIN (ou LEFT OUTER JOIN)
O LEFT JOIN retorna todas as linhas da tabela à esquerda (tabela1) e as linhas correspondentes da tabela à direita (tabela2). Se não houver correspondência, os valores das colunas da tabela à direita serão preenchidos com NULL.

SELECT *
FROM tabela1 t1
LEFT JOIN tabela2 t2
ON t1.chave = t2.chave;

### 3. RIGHT JOIN (ou RIGHT OUTER JOIN)
O RIGHT JOIN retorna todas as linhas da tabela à direita (tabela2) e as linhas correspondentes da tabela à esquerda (tabela1). Se não houver correspondência, os valores das colunas da tabela à esquerda serão preenchidos com NULL.

SELECT *
FROM tabela1 t1
RIGHT JOIN tabela2 t2
ON t1.chave = t2.chave;

### 4. FULL JOIN (ou FULL OUTER JOIN)
O FULL JOIN retorna todas as linhas de ambas as tabelas. Quando não há correspondência, os valores das colunas da tabela sem correspondência são preenchidos com NULL.

SELECT *
FROM tabela1 t1
FULL JOIN tabela2 t2
ON t1.chave = t2.chave;

### 5. CROSS JOIN
O CROSS JOIN retorna o produto cartesiano das duas tabelas, ou seja, cada linha de uma tabela é combinada com todas as linhas da outra tabela.

SELECT *
FROM tabela1 t1
CROSS JOIN tabela2 t2;

### 6. SELF JOIN
O SELF JOIN é uma técnica que permite unir uma tabela a ela mesma. Normalmente, utiliza-se um alias para distinguir as duas instâncias da tabela.

SELECT t1.coluna, t2.coluna
FROM tabela t1
INNER JOIN tabela t2
ON t1.chave = t2.chave;

### 7. NATURAL JOIN
O NATURAL JOIN faz o JOIN de duas tabelas automaticamente, utilizando todas as colunas com o mesmo nome em ambas as tabelas. Deve ser usado com cautela, pois pode causar resultados inesperados se houver colunas não relevantes com o mesmo nome.

SELECT *
FROM tabela1
NATURAL JOIN tabela2;