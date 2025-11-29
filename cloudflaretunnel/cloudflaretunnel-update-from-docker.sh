#!/usr/bin/env bash

# 1. Update Cloudflare Tunnel from Docker Hub
docker pull cloudflare/cloudflared:latest; \

# 2. Shut down running Cloudflare Tunnel instance
docker stop cloudflaretunnel; \

# 3. Delete existing Cloudflare Tunnel container
docker rm cloudflaretunnel; \

# 4. Restart Cloudflare Tunnel container

#docker run -d --network=docker_net --restart=unless-stopped --name=cloudflaretunnel cloudflare/cloudflared:latest --label com.centurylinklabs.watchtower.enable=true tunnel --no-autoupdate run --token eyJhIjoiMDRkNWIxN2U3OTRlMWZhNjRiNTA1ZDBiNmZhNjk5MWEiLCJ0IjoiODEyNjFkNGItMjUzMi00M2VjLThjYTQtNzM2OTJjOTg5NzRiIiwicyI6Ik0yUTFNV0prWXpndFlUVTVPQzAwWXpsa0xXRmhPVEV0WldReVltUXhZakV6WmpFeCJ9

docker run -d \
  --name cloudflaretunnel \
  --pull always \
  --label com.centurylinklabs.watchtower.enable=true \
  --network=docker_net \
  --restart unless-stopped \
  cloudflare/cloudflared:latest \
  tunnel \
  --no-autoupdate \
  run \
  --token eyJhIjoiMDRkNWIxN2U3OTRlMWZhNjRiNTA1ZDBiNmZhNjk5MWEiLCJ0IjoiODEyNjFkNGItMjUzMi00M2VjLThjYTQtNzM2OTJjOTg5NzRiIiwicyI6Ik0yUTFNV0prWXpndFlUVTVPQzAwWXpsa0xXRmhPVEV0WldReVltUXhZakV6WmpFeCJ9
