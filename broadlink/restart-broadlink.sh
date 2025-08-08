#!/usr/bin/env bash

# Stop Broadlink
sudo docker compose -f /home/sdresen/docker/broadlink/docker-compose.yml down ; \

# Pause for 10 Seconds
echo " "
echo "Restarting Broadlink, please wait . . . . "
echo " "
sleep 10s # Waits 10 seconds.

# Restart Broadlink
sudo docker compose -f /home/sdresen/docker/broadlink/docker-compose.yml up -d

