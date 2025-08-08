#!/bin/sh

# Stop Techtools
sudo docker compose -f /home/sdresen/docker/techtools/docker-compose.yml down ; \

# Pause for 10 Seconds
echo " "
echo "Restarting Techtools, please wait . . . . "
echo " "
sleep 10s # Waits 10 seconds.

# Restart Techtools
sudo docker compose -f /home/sdresen/docker/techtools/docker-compose.yml up -d

