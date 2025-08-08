#!/bin/sh

# 1. Update CAdvsior from Docker Hub
docker pull gcr.io/cadvisor/cadvisor:v0.49.1; \

# 2. Shut down running CAdvisor instance
sudo docker compose -f /home/sdresen/docker/cadvisor/docker-compose.yml down; \

# 3. Restart CAdvisor container
sudo docker compose -f /home/sdresen/docker/cadvisor/docker-compose.yml up -d
