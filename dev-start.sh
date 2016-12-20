#!/bin/bash


#export DOCKER_TLS_VERIFY="1"
#export DOCKER_HOST="tcp://192.168.99.100:2376"
#export DOCKER_CERT_PATH="C:\Users\yafei\.docker\machine\machines\default"
#export DOCKER_MACHINE_NAME="default"


#docker-machine env default
eval "$(docker-machine env default)"
#docker info

cd ~/dev/laradock-chinese
#docker-compose build --no-cache mysql redis nginx
#docker-compose build mysql redis nginx php-fpm workspace elasticsearch
#docker-compose up -d mysql redis nginx elasticsearch
docker-compose start php-fpm workspace mysql nginx redis elasticsearch phpmyadmin
