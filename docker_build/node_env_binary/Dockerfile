FROM ubuntu:16.04

RUN echo $PATH
ADD sources.list /etc/apt/

RUN apt update \
    && apt install vim -y \
    && apt install curl -y \
    && apt install git -y \
    && apt install python -y

ADD node-v12.14.0-linux-x64.tar.xz /etc/node_js/
WORKDIR /etc/node_js
RUN mv node-v12.14.0-linux-x64 v12.14.0
ENV NODE_HOME /etc/node_js/v12.14.0
ENV NODE $NODE_HOME/bin
ENV PATH $NODE:$PATH

RUN whereis node
RUN echo ${PATH}
RUN npm -v

RUN echo set npm register
RUN npm config set register https://registry.npm.taobao.org
RUN npm config list