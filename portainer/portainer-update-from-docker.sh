#!/bin/sh

# 1. Update Portainer from Docker Hub
docker pull portainer/agent:latest; \

# 2. Shut down running Portainer instance
sudo docker compose -f /home/sdresen/docker/portainer/docker-compose.yml down; \

# 3. Restart Portainer container
sudo docker compose -f /home/sdresen/docker/portainer/docker-compose.yml up -d
