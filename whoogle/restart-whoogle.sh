#!/usr/bin/env bash

# Stop Whoogle
sudo docker compose -f /home/sdresen/docker/whoogle/docker-compose.yml down ; \

# Pause for 10 Seconds
echo " "
echo "Restarting Whoogle, please wait . . . . "
echo " "
sleep 10s # Waits 10 seconds.

# Restart Whoogle
sudo docker compose -f /home/sdresen/docker/whoogle/docker-compose.yml up -d

