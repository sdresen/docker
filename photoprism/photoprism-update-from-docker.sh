#!/usr/bin/env bash

# 1. Update Photoprism from Docker Hub
# Mariadb is a set version so no command to pull update
docker pull photoprism/photoprism:latest; \
docker pull containrrr/watchtower; \

# 2. Shut down running Photoprism instance
sudo docker compose -f /home/sdresen/docker/photoprism/docker-compose.yml down; \

# 3. Restart Homarr container
sudo docker compose -f /home/sdresen/docker/photoprism/docker-compose.yml up -d
