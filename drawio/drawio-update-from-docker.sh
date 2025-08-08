#!/bin/sh

# 1. Update Draw.io from Docker Hub
docker pull jgraph/drawio:latest; \

# 2. Shut down running Draw.io instance
sudo docker compose -f /home/sdresen/docker/drawio/docker-compose.yml down; \

# 3. Restart Draw.io container
sudo docker compose -f /home/sdresen/docker/drawio/docker-compose.yml up -d
