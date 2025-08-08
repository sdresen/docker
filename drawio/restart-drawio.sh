#!/bin/sh

# Stop Draw.io
sudo docker compose -f /home/sdresen/docker/drawio/docker-compose.yml down ; \

# Pause for 10 Seconds
echo " "
echo "Restarting Draw.io, please wait . . . . "
echo " "
sleep 10s # Waits 10 seconds.

# Restart Draw.io
sudo docker compose -f /home/sdresen/docker/drawio/docker-compose.yml up -d

