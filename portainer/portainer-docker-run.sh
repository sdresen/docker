#!/usr/bin/env bash

# Portainer Agent
docker run -d -p 9001:9001 \
    --restart unless-stopped \
    --name=portainer-agent \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /var/lib/docker/volumes:/var/lib/docker/volumes \
    portainer/agent:latest
