FROM ubuntu:16.04

ADD apache-maven-3.5.4-bin.tar.gz /etc/maven/
COPY settings.xml /etc/maven/apache-maven-3.5.4/conf/
WORKDIR /etc/maven/
ENV M2_HOME /etc/maven/apache-maven-3.5.4
ENV M2 $M2_HOME/bin
ENV PATH $M2:$PATH

ADD jdk-8u231-linux-x64.tar.gz /etc/java/
WORKDIR /etc/java/
ENV JAVA_HOME=/etc/java/jdk1.8.0_231
ENV JRE_HOME=$JAVA_HOME/jre
ENV CLASSPATH=.:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib/dt.jar
ENV PATH=$JAVA_HOME/bin:$JAVA_HOME/jre/bin:$PATH

RUN echo $PATH
ADD sources.list /etc/apt/

RUN apt update \
    && apt install vim -y \
    && apt install curl -y \
    && apt install git -y

EXPOSE 1011
