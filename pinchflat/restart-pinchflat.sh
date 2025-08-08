#!/bin/sh

# Stop Pinchflat
sudo docker compose -f /home/sdresen/docker/pinchflat/docker-compose.yml down ; \

# Pause for 10 Seconds
echo " "
echo "Restarting Pinchflat, please wait . . . . "
echo " "
sleep 10s # Waits 10 seconds.

# Restart Pinchflat
sudo docker compose -f /home/sdresen/docker/pinchflat/docker-compose.yml up -d

