#!/bin/bash
docker run -d \
  --name zookeeper \
  --network my_docker_net \
  -p 2181:2181 \
  zookeeper:latest
