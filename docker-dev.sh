#!/bin/bash

cd ~/dev/laradock-chinese
#docker-compose build --no-cache mysql redis nginx
docker-compose build mysql redis nginx php-fpm workspace
docker-compose up -d mysql redis nginx
