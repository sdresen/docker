#!/usr/bin/env bash

docker pull benbusby/whoogle-search:latest

docker run -d \
  --name=whoogle \
  -p 5000:5000 \
  -e WHOOGLE_CONFIG_GET_ONLY=1 \
  --restart unless-stopped \
  benbusby/whoogle-search:latest
