#!/bin/bash
docker run -d \
  --name redis \
	--network my_docker_net \
	-p 6379:6379 \
	redis:latest --requirepass "123456"

