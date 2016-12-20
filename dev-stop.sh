#!/bin/bash


eval "$(docker-machine env default)"
cd ~/dev/laradock-chinese
docker-compose stop php-fpm workspace mysql nginx redis elasticsearch phpmyadmin
./xdebugPhpFpm status
