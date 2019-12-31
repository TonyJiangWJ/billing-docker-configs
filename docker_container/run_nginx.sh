#!/bin/bash
docker run -d -p 80:80 \
	--network my_docker_net \
	--name nginx \
	--mount type=bind,source=$HOME/deploy/data/nginx/conf.d,target=/etc/nginx/conf.d \
	--mount type=bind,source=$HOME/deploy/data/web,target=/data/web \
	--mount type=bind,source=$HOME/log/nginx,target=/var/log/nginx \
	nginx:latest

