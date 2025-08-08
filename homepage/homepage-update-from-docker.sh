#!/bin/sh

# 1. Update Homepage from Docker Hub
docker pull ghcr.io/gethomepage/homepage:latest; \

# 2. Shut down running Homepage instance
sudo docker compose -f /home/sdresen/docker/homepage/docker-compose.yml down; \

# 3. Restart Homepage container
sudo docker compose -f /home/sdresen/docker/homepage/docker-compose.yml up -d
