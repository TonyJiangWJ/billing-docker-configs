#!/bin/bash
docker run -d -p 3306:3306 \
	-e MYSQL_ROOT_PASSWORD="123456" \
	--network my_docker_net \
	--name mysql \
	--mount type=bind,source=$HOME/deploy/data/mysql,target=/var/lib/mysql \
	mysql:5.7
