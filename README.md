# 简介

本仓库主要是在实习开放的时候，涉及到了`elk`套件，但是`elastic search` 又是`java`开发的，各种`jdk`安装起来，对于非`java`技术栈的人来说，实在是有点痛苦，所以改用了`docker`。

虽然说`docker`方便了很多，但是因为需要开启三个服务，操作起来还是，有点麻烦。

本着**没有需求就创造需求**的原则，自己摸索了一下`docker-compose`，把三个服务编排在一起，一键启动真香。



## 仓库demo

* flak_demo

  > 官网的基于redis的计数器实现。
  >
  > 编排了flask以及redis服务。

* wp

  > 一键部署wordpress博客
  >
  > 涉及编排容器
  >
  > - MySQL
  > - wordpress

* elk

  > 部署了elk环境
  >
  > 涉及编排容器
  >
  > - elastic search
  > - logstash
  > - kibana
  >
  > 实现的功能
  >
  > - [x] logstash 实时采集 MySQL 数据
  > - [x] logstash 实时推送数据到 elasticsearch
  > - [x] logstash 预设索引模板
  > - [ ] logstash 增量采集（因为涉及到公司内部的架构，就不更了）
