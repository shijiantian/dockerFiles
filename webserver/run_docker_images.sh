#!/bin/bash
#从dockerhub拉取镜像之后执行该脚本运行镜像
sudo docker run -d -p 3306:3306 -p 6379:6379 -p 8083:8083 --name mysqlDocker -e MYSQL_DATABASE="test" -e MYSQL_ROOT_PASSWORD=123456 mysql:5.6
sudo docker run -d --net=container:mysqlDocker --name redisDocker  redis:latest 
sudo docker run -d --net=container:mysqlDocker --name webserver webserver:1.0 
sudo docker run -d -p 80:80 --name webclient webclient:1.0
