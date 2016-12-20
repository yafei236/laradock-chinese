#!/bin/bash

eval "$(docker-machine env default)"

cd ~/dev/laradock-chinese
#docker-compose build --no-cache mysql redis nginx
docker-compose down
# docker-compose build php-fpm workspace mysql nginx redis elasticsearch beanstalkd-console beanstalkd
docker-compose build php-fpm workspace mysql nginx redis elasticsearch phpmyadmin
docker-compose up -d mysql redis nginx phpmyadmin elasticsearch
docker ps -a
