#!/bin/bash

docker rmi 1aquila1/node-app 1aquila1/mysql 1aquila1/nginx-app

docker build -t 1aquila1/node-app ./node -f ./node/dockerfile.prod
docker build -t 1aquila1/mysql . -f ./dockerfile.mysql.prod
docker build -t 1aquila1/nginx-app . -f ./dockerfile.nginx.prod


docker compose up -d
