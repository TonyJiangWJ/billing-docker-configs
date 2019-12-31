#!/bin/bash
docker run -it --rm \
  --name node_env \
  --mount type=bind,source=$HOME/deploy/src/,target=/data/src \
  --mount type=bind,source=$HOME/deploy/data/web/,target=/data/deploy/web \
  node_env:v1
