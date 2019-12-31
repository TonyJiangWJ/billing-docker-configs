#!/bin/bash
cd /data/src/vue-bill-manager-wp4
git checkout -- .
git pull
echo 'update npm dependencies'
npm install --registry https://registry.npm.taobao.org
echo 'building'
npm run build
echo 'copy files'
if [ -d '/data/deploy/web/vue-bill-manager' ]; then
  rm -r /data/deploy/web/vue-bill-manager
fi
cp -r dist /data/deploy/web/vue-bill-manager
echo 'done'