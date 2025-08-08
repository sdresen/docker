#!/bin/sh

# Stop Traefik Stack
sudo docker compose -f /home/sdresen/docker/traefik/docker-compose.yml down; \

# Pause for 10 Seconds
echo " "
echo "Restarting Traefik, please wait . . . . "
echo " "
sleep 10s # Waits 10 seconds.

# Restart Traefik Stack
sudo docker compose -f /home/sdresen/docker/traefik/docker-compose.yml up -d
