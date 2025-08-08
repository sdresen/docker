#!/bin/sh

# 1. Update Opengist from Docker Hub
docker pull ghcr.io/thomiceli/opengist:latest; \

# 2. Shut down running Opengist instance
sudo docker compose -f /home/sdresen/docker/opengist/docker-compose.yml down; \

# 3. Restart Opengist container
sudo docker compose -f /home/sdresen/docker/opengist/docker-compose.yml up -d
