#!/bin/sh

# Stop CAdvisor Stack
sudo docker compose -f /home/sdresen/docker/cadvisor/docker-compose.yml down; \

# Pause for 10 Seconds
echo " "
echo "Restarting CAdvisor, please wait . . . . "
echo " "
sleep 10s # Waits 10 seconds.

# Restart CAdvisor Stack
sudo docker compose -f /home/sdresen/docker/cadvisor/docker-compose.yml up -d
