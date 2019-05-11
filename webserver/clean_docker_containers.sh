#!/bin/bash
#清除docker容器的脚本
sudo docker stop webclient webserver redisDocker mysqlDocker
sudo docker rm webclient webserver redisDocker mysqlDocker
