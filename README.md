# Instalação PostgresSql e Pgadmin4 via docker em ambiente linux(nativo ou via WSL)

### Como cada aplicação será uma imagem configurada em um container, é necessário criar uma rede que funcionará como ponte para ambos containeres se comunicarem. Dessa forma utilizaremos o Pgadmin4 como interface para utilização do banco de dados PostgresSql

### Digite no CMD o seguinte comando para criação da rede:

$ docker network create sql-completo-network

![docker1](https://github.com/user-attachments/assets/03cc75dc-4152-42f9-9e9b-98018242b900)

### em seguida digite o seguinte comando ainda no CMD para configurar o primeiro container com a imagem do postgresSql

$ docker run --name sql-completo-postgres \
  --network sql-completo-network \
  -p 5437:5437 \
  -e POSTGRES_PASSWORD=postgres \
  -d postgres

![image](https://github.com/user-attachments/assets/c86c5d05-2d8f-4dfe-a276-4aaa51d274cc)

Para finalizar vamos fazer uma mesmo processo para utilização do Pgadmin4:

$ docker run --name sql-completo-pgadmin \
  --network sql-completo-network \
  -p 15437:80 \
  -e PGADMIN_DEFAULT_EMAIL=walterbiel1237@hotmail.com \
  -e PGADMIN_DEFAULT_PASSWORD=postgres \
  -d dpage/pgadmin4

  ### Dessa forma teremos as 2 imagens configuradas e os containeres se comunicando pela network criada inicialmente:
  
![image](https://github.com/user-attachments/assets/73459b40-f611-4970-b6d6-29d8d586fff8)



