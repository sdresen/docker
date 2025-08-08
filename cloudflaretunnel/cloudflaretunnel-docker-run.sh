#!/usr/bin/env bash

docker run -d --restart=unless-stopped --name=cloudflaretunnel cloudflare/cloudflared:latest tunnel --network=docker_net --no-autoupdate run --token eyJhIjoiMDRkNWIxN2U3OTRlMWZhNjRiNTA1ZDBiNmZhNjk5MWEiLCJ0IjoiODEyNjFkNGItMjUzMi00M2VjLThjYTQtNzM2OTJjOTg5NzRiIiwicyI6Ik0yUTFNV0prWXpndFlUVTVPQzAwWXpsa0xXRmhPVEV0WldReVltUXhZakV6WmpFeCJ9
