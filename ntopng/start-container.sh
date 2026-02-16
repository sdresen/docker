#!/bin/sh

APP_FOLDER="/home/sdresen/docker/ntopng"

sudo docker compose -f $APP_FOLDER/docker-compose.yml up -d
