#!/usr/bin/env bash

cd /home/sdresen/docker/cadvisor
./cadvisor-update-from-docker.sh; \

cd /home/sdresen/docker/portainer
./portainer-update-from-docker.sh; \

cd /home/sdresen/docker/traefik
./traefik-update-from-docker.sh; \

cd /home/sdresen/docker/watchtower
./watchtower-update-from-docker.sh; \

cd /home/sdresen/docker/speedtest 
./container-update-from-docker.sh; \

# No point in restarting pfElk since
# it doesn't auto-update
#cd /home/sdresen/docker/pfelk
#./pfelk-update-from-docker.sh; \

cd /home/sdresen/docker

clear

docker container list
