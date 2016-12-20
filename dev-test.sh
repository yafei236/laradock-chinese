#!/bin/bash


eval "$(docker-machine env default)"
cd ~/dev/laradock-chinese
./xdebugPhpFpm start
./xdebugPhpFpm status
