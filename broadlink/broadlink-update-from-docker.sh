#!/usr/bin/env bash

# 1. Update Broadlink Manager
docker pull techblog/broadlinkmanager; \

# 2. Shut down running Broadlink Manager instance
sudo docker compose -f /home/sdresen/docker/broadlink/docker-compose.yml down; \

# 3. Restart Broadlink Manager container

sudo docker compose -f /home/sdresen/docker/broadlink/docker-compose.yml up -d
