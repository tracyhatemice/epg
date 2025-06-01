EPG
============

运行要求
----
依赖 traefik、MySQL、Docker

Docker 部署
----

本节只涉及部署。不涉及 MySQL、Docker Engine 安装。

### 数据库

MySQL 中创建 epg 数据库并导入 ``epg\epg-mysql.sql``

### 克隆仓库

```bash
git clone https://github.com/tracyhatemice/epg.git
```

### 修改环境变量
将 ``.env.sample`` 复制到 ``.env``，修改域名和数据库配置。

```bash
cp .env.sample .env
vi .env
```
### 修改自动运行时间（可选）

修改 cronjob 文件中的时间（UTC），改变节目抓取时间。

### 修改反向代理配置

修改 ``docker-compose.yaml`` label 部分。本例使用预先配置好的 traefik，并调用了中间件。

### 构建并运行

```bash
docker compose up -d
```


依赖
----

- requests
- django
- BeautifulSoup
- mysqlclient
- uwsgi


致谢
----

基于 https://github.com/supzhang/epg/ 和 https://github.com/mxdabc/epg 再次开发