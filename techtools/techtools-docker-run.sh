#!/usr/bin/env bash

docker run -d --name techtools --restart unless-stopped -p 8181:80 corentinth/it-tools:latest

