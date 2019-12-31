#!/bin/bash
docker run -d \
    --name bill_web_consumer \
    --network my_docker_net \
    --mount type=bind,source=$HOME/deploy/data/server-dubbo/,target=/data/deploy/server \
    --mount type=bind,source=$HOME/deploy/src/,target=/data/src \
    --mount type=bind,source=$HOME/log/,target=/var/log/ \
    -p 1310:1011 \
    java_env:v3 /data/src/deploy_dubbo_client.sh 
