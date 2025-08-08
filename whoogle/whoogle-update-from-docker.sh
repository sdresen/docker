#!/usr/bin/env bash

# 1. Update Whoogle from Docker Hub
docker pull benbusby/whoogle-search:latest; \

# 2. Shut down running Whoogle instance
sudo docker compose -f /home/sdresen/docker/whoogle/docker-compose.yml down; \

# 3. Restart Whoogle container
sudo docker compose -f /home/sdresen/docker/whoogle/docker-compose.yml up -d
