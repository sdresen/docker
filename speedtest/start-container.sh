#!/bin/sh

APP_FOLDER="/home/sdresen/docker/speedtest"

sudo docker compose -f $APP_FOLDER/docker-compose.yml up -d
