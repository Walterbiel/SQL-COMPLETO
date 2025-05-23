# Instalação PostgresSql e Pgadmin4 via docker em ambiente linux(nativo ou via WSL)

### Como cada aplicação será uma imagem configurada em um container, é necessário criar uma rede que funcionará como ponte para ambos containeres se comunicarem. Dessa forma utilizaremos o Pgadmin4 como interface para utilização do banco de dados PostgresSql

Siga o passo a passo direto abaixo, ou suba o arquivo docker-compose.yaml com o comando:$ docker compose up -d

### Digite no CMD o seguinte comando para criação da rede:

$ docker network create sql-completo-network

![docker1](https://github.com/user-attachments/assets/03cc75dc-4152-42f9-9e9b-98018242b900)

### em seguida digite o seguinte comando ainda no CMD para configurar o primeiro container com a imagem do postgresSql

$ docker run --name sql-completo-postgres \
  --network sql-completo-network \
  -p 5437:5432 \
  -e POSTGRES_PASSWORD=postgres \
  -d postgres


![image](https://github.com/user-attachments/assets/c86c5d05-2d8f-4dfe-a276-4aaa51d274cc)

Para finalizar vamos fazer uma mesmo processo para utilização do Pgadmin4:

$ docker run --name sql-completo-pgadmin \
  --network sql-completo-network \
  -p 15437:80 \
  -e PGADMIN_DEFAULT_EMAIL=seu_email@exemplo.com \
  -e PGADMIN_DEFAULT_PASSWORD=postgres \
  -d dpage/pgadmin4

  ### Dessa forma teremos as 2 imagens configuradas e os containeres se comunicando pela network criada inicialmente:
  
![image](https://github.com/user-attachments/assets/73459b40-f611-4970-b6d6-29d8d586fff8)

### Em seguida abra seu navegador para utilização do pgadmin na porta selecionada:
http://localhost:15437/ e digite seu e-mail e senha configurados:
![image](https://github.com/user-attachments/assets/0f47f32d-5d7c-4fe3-af77-43a7f29340da)

A partir de agora é possível visualizar a interface do Pgadmin4 e precisamos vincular ao servidor do postgresSQL:

![image](https://github.com/user-attachments/assets/56fef358-9eed-444c-b650-2937c65ea7af)

Digite o nome do servidor e na conexão vincule com a porta correta e o nome do container criado para o postgres,não esqueca de colocar a senha:

![image](https://github.com/user-attachments/assets/96ccaffc-86a4-460e-9e4c-a2ef1d9415d2)

Agora é possível utilizar o postgres via pgaadmin para criarmos nosso banco de dados e realizarmos os scripts SQL:

![image](https://github.com/user-attachments/assets/2cf4daf6-67fc-4da9-9402-5df2cc0d9d13)


### Para iniciar a utilização vamos rodar um script pronto para criação de um banco de dados teste que será fonte das nossas análises:
Rode o script: northwind.sql

![image](https://github.com/user-attachments/assets/4392257e-8b4d-4a8c-b5e9-e2100c1d8c51)

### utilize o pgadmin4 para rodar os scripts e gerar gráficos, os scripts estão disponibilizados no repositório:

![image](https://github.com/user-attachments/assets/4ef56be1-0184-458e-ade0-35b292dcbc01)


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

<iframe title="Market Basket Analysis" width="600" height="636" src="https://app.powerbi.com/view?r=eyJrIjoiN2YwMTcyZDQtMTIyZC00NWQ4LWE3ZGMtNzZkMzQzNTU3NzI3IiwidCI6IjUxZWM4MDM1LWViOTYtNDg0Yy05YjU4LTFkNGEwMDJkM2I0NSJ9&pageName=27daebb71275dbea40a1" frameborder="0" allowFullScreen="true"></iframe>
![image](https://github.com/user-attachments/assets/c37f4ebc-8aaa-4dcc-9e7c-94bdf1a93e5d)
https://www.google.com/url?sa=i&url=https%3A%2F%2Flearnsql.com.br%2Fblog%2Fcomo-aprender-sql-joins%2F&psig=AOvVaw0NaWxpHsetXeeGmzBUaegR&ust=1736896016443000&source=images&cd=vfe&opi=89978449&ved=0CBcQjhxqFwoTCPC57MbA84oDFQAAAAAdAAAAABAE


