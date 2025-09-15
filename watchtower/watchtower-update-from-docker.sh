#!/bin/sh

# 1. Update Watchtower from Docker Hub
docker pull nickfedor/watchtower:latest; \

# 2. Shut down running Watchtower instance
sudo docker compose -f /home/sdresen/docker/watchtower/docker-compose.yml down; \

# 3. Restart Watchtower container
sudo docker compose -f /home/sdresen/docker/watchtower/docker-compose.yml up -d
