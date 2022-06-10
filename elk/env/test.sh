#!/bin/bash

export ES_HTTP_PORT=9200
export ES_TCP_PORT=9300

export Kibana_HTTP_PORT=5601

export MySQL_PORT=3306
export IP=192.168.255.10


echo "环境备份----"
cp ./kibana/kibana.yml ./kibana/kibana.yml.bak
cp ./logstash/logstash.conf ./logstash/logstash.conf.bak
cp ./logstash/logstash.yml ./logstash/logstash.yml.bak
echo "环境备份完毕"

echo "自动替换环境变量中---"

echo "edit kibana.yml ---"
sed -i "s/\${IP}/$IP/g" ./kibana/kibana.yml
sed -i "s/\${ES_HTTP_PORT}/$ES_HTTP_PORT/g" ./kibana/kibana.yml
echo "finish kibana.yml ---"

echo "edit logstash ---"
sed -i "s/\${IP}/$IP/g" ./logstash/logstash.conf
sed -i "s/\${ES_HTTP_PORT}/$ES_HTTP_PORT/g" ./logstash/logstash.conf
sed -i "s/\${MySQL_PORT}/$MySQL_PORT/g" ./logstash/logstash.conf

sed -i "s/\${IP}/$IP/g" ./logstash/logstash.yml
sed -i "s/\${ES_HTTP_PORT}/$ES_HTTP_PORT/g" ./logstash/logstash.yml

echo "finish logstash"