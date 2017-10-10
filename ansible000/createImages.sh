#!/bin/bash
docker build -t mysql_db ./mysql/

docker build -t server-redis:16.04 ./redis/

docker build -t server:16.04 ./moodle/
