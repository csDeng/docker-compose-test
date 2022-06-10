# 准备数据
> 打开 `db` 目录的 `test_number.sql` 文件，将其中内容拷贝到`mysql`运行

# 更改配置
将env目录下面的`test.sh`的ip需要改为启动docker的主机ip

---


# 首次启动`ELK`应用
```shell
source ./env/test.sh
docker-compose up

```

# 修改配置之后再启动，需要指定重新构建镜像
```shell
source ./env/test.sh
docker-compose up --force-recreat

```


# 补充说明
* `demo_req`目录存放的是`es`的测试请求

* es的端口说明
	> 9200 是ES节点与外部通讯使用的端口。它是http协议的RESTful接口（各种CRUD操作都是走的该端口,如查询：http://localhost:9200/user/_search）。
	> 9300是ES节点之间通讯使用的端口。它是tcp通讯端口，集群间和TCP client都走的它。





