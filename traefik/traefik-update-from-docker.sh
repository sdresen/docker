#!/bin/sh

# 1. Update Traefik from Docker Hub
#docker pull docker.io/library/traefik:v3.1; \
docker pull traefik:latest; \

# 2. Shut down running Traefik instance
sudo docker compose -f /home/sdresen/docker/traefik/docker-compose.yml down; \

# 3. Restart Traefik container
sudo docker compose -f /home/sdresen/docker/traefik/docker-compose.yml up -d
