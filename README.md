# 保存Docker配置等信息

## 关联项目

- [BillingDubbo](https://github.com/TonyJiangWJ/BillingDubbo) 基于SpringBoot2和Dubbo实现的后端项目
- [vue-billing-manager-wp4](https://github.com/tonyJiangWJ/vue-bill-manager-wp4) 基于Vue2+和Webpack4的前端项目

## docker_build 说明

- 存放docker镜像构建的备份，Dockerfile等信息
- java_env Java8 运行环境
- node_env_binary node环境
- java_env是运行服务所必须的
- node_env是构建打包vue项目必须的，如果不需要在docker容器中自动打包可以不构建它

## docker_container 说明

- 执行docker容器的脚本备份

## docker_compose 说明

- 不通过docker container一个一个运行，通过docker-compose直接运行项目
- 当前整合了以下六个容器
  - redis
  - nginx
  - zookeeper
  - mysql
  - bill_server_provider
  - bill_web_consumer

## execute_scripts 下的文件说明

- 将这些文件和文件夹放在 `$HOME/deploy/src` 下即可
- 在 `$HOME/deploy/src` 下 git 下载 `BillingDubbo` 和 `vue-billing-manager-wp4`

## 其他注意事项

- MySQL数据库和表结构需要自行导入
- 服务配置信息需要自行修改并存放到指定位置`$HOME/deploy/src/configs/`
- execute_scripts下的文件放到`$HOME/deploy/src` 下
- RSA key需要自行生成并放到`$HOME/deploy/data/server-dubbo/license/` 下

    ```shell
    -- $HOME/deploy/data/server-dubbo/license
      -  private.keystore
      -  public.keystore
    ```

- nginx的配置 `default.conf` 需要放到`$HOME/deploy/data/nginx/conf.d/` 下
