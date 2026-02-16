#!/bin/sh

APP_CONTAINER="lscr.io/linuxserver/speedtest-tracker:latest"
APP_FOLDER="/home/sdresen/docker/speedtest"

# 1. Update container
docker pull $APP_CONTAINER; \

# 2. Shut down running instance
sudo docker compose -f $APP_FOLDER/docker-compose.yml down; \

# 3. Restart container
sudo docker compose -f $APP_FOLDER/docker-compose.yml up -d
