#!/bin/sh

APP_FOLDER="/home/sdresen/docker/smokeping"

sudo docker compose -f $APP_FOLDER/docker-compose.yml up -d
