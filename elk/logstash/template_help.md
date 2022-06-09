# template 编写帮助文档

[官方文档](https://www.elastic.co/guide/en/elasticsearch/reference/5.4/indices-templates.html)

* 注意 `index template`只在新建索引的时候起效。


---

## 相关字段的意义

* order
  
	> template 是可以设置 order 参数的！而不写这个参数，默认的 order 值就是 0。order 值越大，在 merge 规则的时候优先级越高。

* version


	> 模板可以选择添加版本号，这可以是任何整数值，以便简化外部系统的模板管理。版本字段是完全可选的，它仅用于模板的外部管理。要取消设置版本，只需替换模板即可

* setting

	> 索引的配置，主分片，副分片等等

* mapping

	>映射

* index_pattern
  
  > 索引模板起作用的匹配模板
  > ` * ` 可以匹配任意长的任意字符
	


---

# 一些常见问题

1. mappings 配置字段不起作用

- 注意字段需要与mysql查出来的数据一致