#!/usr/bin/env bash

# Stop Rustdesk
sudo docker compose -f /home/sdresen/docker/rustdesk/docker-compose.yml down ; \

# Pause for 10 Seconds
echo " "
echo "Restarting Rustdesk, please wait . . . . "
echo " "
sleep 10s # Waits 10 seconds.

# Restart Rustdesk
sudo docker compose -f /home/sdresen/docker/rustdesk/docker-compose.yml up -d

