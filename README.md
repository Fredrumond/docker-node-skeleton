#rodando os serviços
docker-compose up --build -d

#acessando containers
docker exec -it app /bin/sh
docker exec -it db /bin/sh

#acessando aplicação
http://localhost:3000/
http://localhost:80