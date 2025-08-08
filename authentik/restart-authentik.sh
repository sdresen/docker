#!/usr/bin/env bash

# Stop Authentik
sudo docker compose -f /home/sdresen/docker/authentik/docker-compose.yml down ; \

# Pause for 10 Seconds
echo " "
echo "Restarting Authentik, please wait . . . . "
echo " "
sleep 10s # Waits 10 seconds.

# Restart Authentik
sudo docker compose -f /home/sdresen/docker/authentik/docker-compose.yml up -d

