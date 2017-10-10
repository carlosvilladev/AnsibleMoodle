#!/bin/bash

DATA=$HOME/Documents/UTB/ComputacionNube/Ansible/Ansible202/ansible002/data
MYSQLPASS=123456

echo "Lanzando servidor web..."
docker run -d -P --name server01 -p 2221:22 -p 80:80 -v $DATA/moodle:/var/moodledata server:16.04
echo "Servidor desplegado."
echo
echo "----------------------"
echo "Lanzando servidor MySQL"
#docker run -d -P --name server_task_02 -p 2222:22 -p 3307:3306 -v $DATA/mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=$MYSQLPASS -d mysql:5.7
#docker run -d -P --name server02 -p 3307:3306 -v $DATA/mysql:/var/lib/mysql mysql
docker run -d -P --name server02 -p 2222:22 -p 3307:3306 server:16.04
echo "Servidor desplegado."
echo
echo "----------------------"
echo "Lanzando servidor noSQL Redis"
#docker run -d -P --name server_task_03 -p 2223:22 -p 6379:6379 -v $DATA/redis:/data -d server-redis:16.04 redis-server
#docker run -d -P --name server_task_03 -p 2223:22 -p 6379:6379 -v $DATA/redis:/data -d redis:alpine redis-server --appendonly yes
#docker run -d --name server03 -p 2223:22 -p 6379:6379 -v $DATA/redis:/data redis:alpine redis-server --appendonly yes
docker run -d -P --name server03 -p 2223:22 -p 6379:6379 -v $DATA/redis:/data server:16.04

echo "Servidor desplegado."
echo
echo "----------------------"
echo "     Confirmando      "
echo "----------------------"
docker ps
echo
echo "----------------------"
