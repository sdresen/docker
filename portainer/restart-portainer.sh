#!/bin/sh

# Stop Portainer
sudo docker compose -f /home/sdresen/docker/portainer/docker-compose.yml down ; \

# Pause for 10 Seconds
echo " "
echo "Restarting Portainer, please wait . . . . "
echo " "
sleep 10s # Waits 10 seconds.

# Restart Portainer
sudo docker compose -f /home/sdresen/docker/portainer/docker-compose.yml up -d

