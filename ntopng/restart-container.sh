#!/bin/sh

APP_NAME="NtopNG"
APP_FOLDER="/home/sdresen/docker/ntopng"

# Stop Container
sudo docker compose -f $APP_FOLDER/docker-compose.yml down ; \

# Pause for 10 Seconds
echo " "
echo "Restarting $APP_NAME, please wait . . . . "
echo " "
sleep 10s # Waits 10 seconds.

# Restart Container
sudo docker compose -f $APP_FOLDER/docker-compose.yml up -d
