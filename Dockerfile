# FROM elasticsearch
# this image on docker hub is deprecated (see https://hub.docker.com/_/elasticsearch/)
# I am still using is because of docker hub's auto update
# official:
FROM docker.elastic.co/elasticsearch/elasticsearch:6.2.4

RUN bin/elasticsearch-plugin install ingest-attachment

# remove x-pack because of license problems spamming log file with massive amounts of errors
RUN bin/elasticsearch-plugin remove x-pack --purge \
    &&  sed -i 's/^xpack/#xpack/' config/elasticsearch.yml

