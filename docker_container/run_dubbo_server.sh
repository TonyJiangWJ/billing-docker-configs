#!/bin/bash
docker run -d \
    --name bill_server_provider \
    --network my_docker_net \
    --mount type=bind,source=$HOME/deploy/data/server-dubbo/,target=/data/deploy/server \
    --mount type=bind,source=$HOME/deploy/src/,target=/data/src \
    --mount type=bind,source=$HOME/log/,target=/var/log/ \
    java_env:v1 /data/src/deploy_dubbo_server.sh 
