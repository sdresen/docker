#!/usr/bin/env bash

docker run -d -p 9191:8080 \
    --restart unless-stopped \
    --name fasten \
    -v /home/sdresen/docker/fasten/data:/opt/fasten/db/ \
    ghcr.io/fastenhealth/fasten-onprem:main

