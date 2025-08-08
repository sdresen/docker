#!/usr/bin/env bash

# 1. Update Techtools from Docker Hub
docker pull corentinth/it-tools:latest; \

# 2. Shut down running Techtools instance
sudo docker compose -f /home/sdresen/docker/techtools/docker-compose.yml down; \

# 3. Restart Techtools container
sudo docker compose -f /home/sdresen/docker/techtools/docker-compose.yml up -d
