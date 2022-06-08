FROM logstash:7.6.1
RUN chmod -R 777 /usr/share/logstash
COPY ./logstash.conf /usr/share/logstash/pipeline/logstash.conf
COPY ./mysql-connector-java-5.1.49.jar /usr/share/logstash/logstash-core/lib/jars/mysql-connector-java-5.1.49.jar
COPY ./logstash.yml /usr/share/logstash/config/logstash.yml
COPY ./template.json /usr/share/logstash/template.json
