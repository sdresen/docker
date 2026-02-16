#!/bin/sh

# Path to the directory containing your docker-compose.yml
APP_FOLDER="/home/sdresen/docker/ntopng"

# 1. Pull the latest images for ALL services defined in the compose file
# This will only download images that have updates available.
sudo docker compose -f "$APP_FOLDER/docker-compose.yml" pull

# 2. Recreate and restart only the containers that have changed
# You don't need 'down' here. 'up -d' is smart enough to detect 
# if a new image was pulled and will only restart the affected services.
sudo docker compose -f "$APP_FOLDER/docker-compose.yml" up -d --remove-orphans

# 3. Clean up old, unused images (optional but recommended)
# This removes the "dangling" images left over after the update.
sudo docker image prune -f
