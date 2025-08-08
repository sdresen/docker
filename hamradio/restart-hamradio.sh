#!/bin/sh

# Stop Ham Radio
sudo docker compose -f /home/sdresen/docker/hamradio/docker-compose.yml down ; \

# Pause for 10 Seconds
echo " "
echo "Restarting Ham Radio, please wait . . . . "
echo " "
sleep 10s # Waits 10 seconds.

# Restart Ham Radio
sudo docker compose -f /home/sdresen/docker/hamradio/docker-compose.yml up -d

