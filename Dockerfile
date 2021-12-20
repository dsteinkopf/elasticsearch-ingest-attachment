# FROM elasticsearch
# this image on docker hub was deprecated for some time (see https://hub.docker.com/_/elasticsearch/)
# and still seems "weird" to me. So I am using one from elastic directly
# (see https://www.docker.elastic.co/r/elasticsearch/elasticsearch)
FROM docker.elastic.co/elasticsearch/elasticsearch:6.8.22
# 6.8.22 contains all known log4j/log4shell mitigations DSTK_2021-12-20
# see https://www.elastic.co/de/blog/new-elasticsearch-and-logstash-releases-upgrade-apache-log4j2

RUN bin/elasticsearch-plugin install  --batch ingest-attachment

