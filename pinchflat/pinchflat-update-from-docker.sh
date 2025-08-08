#!/bin/sh

# 1. Update Pinchflat from Docker Hub
docker pull ghcr.io/kieraneglin/pinchflat:latest; \

# 2. Shut down running Pinchflat instance
sudo docker compose -f /home/sdresen/docker/pinchflat/docker-compose.yml down; \

# 3. Restart Pinchflat container
sudo docker compose -f /home/sdresen/docker/pinchflat/docker-compose.yml up -d
