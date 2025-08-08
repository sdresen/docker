#!/usr/bin/env bash

cd /home/sdresen/docker/pfelk

# Make .env file visible to this script for variable use
source .env

docker pull docker.elastic.co/elasticsearch/elasticsearch:$STACK_VERSION; \
docker pull docker.elastic.co/kibana/kibana:$STACK_VERSION; \
docker pull docker.elastic.co/logstash/logstash:$STACK_VERSION; \

docker compose down; \

docker compose -f /home/sdresen/docker/pfelk/docker-compose.yml up -d

