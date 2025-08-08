#!/usr/bin/env bash

# 1. Update Rustdesk from Docker Hub
docker pull lscr.io/linuxserver/rustdesk:latest; \

# 2. Shut down running Rustdesk instance
sudo docker compose -f /home/sdresen/docker/rustdesk/docker-compose.yml down; \

# 3. Restart Rustdesk container
sudo docker compose -f /home/sdresen/docker/rustdesk/docker-compose.yml up -d
