#!/bin/sh

APP_FOLDER="/home/sdresen/docker/portainer"

# 1. Update container
docker pull portainer/agent:latest; \

# 2. Shut down running instance
sudo docker compose -f $APP_FOLDER/docker-compose.yml down; \

# 3. Restart container
sudo docker compose -f $APP_FOLDER/docker-compose.yml up -d
