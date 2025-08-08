#!/bin/sh

# 1. Update Ham Radio from Docker Hub
docker pull lipanski/docker-static-website:latest; \

# 2. Shut down running Ham Radio instance
sudo docker compose -f /home/sdresen/docker/hamradio/docker-compose.yml down; \

# 3. Restart Ham Radio container
sudo docker compose -f /home/sdresen/docker/hamradio/docker-compose.yml up -d
