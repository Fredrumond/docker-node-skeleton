## Baixa a imagem do node com versão alpine (versão mais simplificada e leve)
FROM node:alpine

## Define o local onde o app vai ficar no disco do container
WORKDIR /usr/src

## Copia o package.json para dentro da pasta /usr/src
COPY package.json .

## Executa npm install para adicionar as dependências e criar a pasta node_modules
RUN npm install

ENV PATH /usr/src/node_modules/.bin:$PATH

## Define o local onde o app vai ficar no disco do container
WORKDIR /usr/src/app

## Copia tudo que está no diretório onde o arquivo Dockerfile está 
## para dentro da pasta /usr/src/app do container
COPY . .

## Container ficará ouvindo os acessos na porta 3000
EXPOSE 3000

## Não se repete no Dockerfile
## Executa o comando npm start para iniciar o script que que está no package.json
CMD npm start