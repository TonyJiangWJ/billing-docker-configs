#!/bin/bash
# 临时容器，用于更新代码并打包
docker run -it --rm \
    --name build_dubbo_package \
    --network my_docker_net \
    --mount type=bind,source=$HOME/deploy/data/server-dubbo/,target=/data/deploy/server \
    --mount type=bind,source=$HOME/deploy/src/,target=/data/src \
    --mount type=bind,source=$HOME/log/,target=/var/log/ \
    java_env:v1 /data/src/update_and_build_dubbo.sh 
