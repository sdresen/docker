#!/bin/sh

APP_FOLDER="/home/sdresen/docker/portainer"

sudo docker compose -f $APP_FOLDER/docker-compose.yml down
