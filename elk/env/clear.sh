#!/bin/bash

echo "清除脏环境"

rm ./kibana/kibana.yml 
rm ./logstash/logstash.conf 
rm ./logstash/logstash.yml


echo "环境还原"

cp  ./kibana/kibana.yml.bak ./kibana/kibana.yml
cp  ./logstash/logstash.conf.bak ./logstash/logstash.conf
cp  ./logstash/logstash.yml.bak ./logstash/logstash.yml

echo "还原结束"