/**
安装vscode-es插件 elsaticsearch fro vscode

 */


// 获取mapping
GET /test_number/_mapping


// 获取所有数据

GET /test_number/_search

// 条件查询
GET /test_number/_search
{
	"query":{
		"match": {
			"num": 100
		}
	}
}


// 高亮
GET /test_number/_search
{
	"query":{
		"match": {
			"num": 100
		}
	},
	"highlight":{
		"fields":{
			"num":{}
		}
	}
}