#!/bin/bash

cd ~/dev/laradock-chinese
#docker-compose build --no-cache mysql redis nginx
docker-compose down
docker-compose build php-fpm workspace mysql nginx redis
docker-compose up -d mysql redis nginx phpmyadmin
docker ps -a
