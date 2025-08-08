#!/bin/sh

# Stop Opengist
sudo docker compose -f /home/sdresen/docker/opengist/docker-compose.yml down ; \

# Pause for 10 Seconds
echo " "
echo "Restarting Opengist, please wait . . . . "
echo " "
sleep 10s # Waits 10 seconds.

# Restart Opengist
sudo docker compose -f /home/sdresen/docker/opengist/docker-compose.yml up -d

