#!/bin/bash

docker compose down

docker rmi 1aquila1/node-app 1aquila1/mysql 1aquila1/nginx-app

docker images
