#!/bin/bash
# 更新git并打包jar
cd /data/src/BillingDubbo
git checkout -- .
git pull
echo 'copy configs'
cp ../billing-dubbo/configs/client/* ./billing-client/src/main/resources/
cp ../billing-dubbo/configs/server/* ./billing-server/src/main/resources/
echo 'build package'
mvn clean install -Dmaven.test.skip -P release
cp ./billing-server/target/billing-server-1.0-SNAPSHOT.jar /data/deploy/server
cp ./billing-client/target/billing-client-1.0-SNAPSHOT.jar /data/deploy/server
echo 'done'