#!/usr/bin/env bash

cd /home/sdresen/docker/broadlink
./broadlink-update-from-docker.sh; \

cd /home/sdresen/docker/cadvisor
./cadvisor-update-from-docker.sh; \

cd /home/sdresen/docker/cloudflaretunnel
./cloudflaretunnel-update-from-docker.sh; \

cd /home/sdresen/docker/drawio
./drawio-update-from-docker.sh; \

cd /home/sdresen/docker/homepage
./homepage-update-from-docker.sh; \

cd /home/sdresen/docker/photoprism
./photoprism-update-from-docker.sh; \

cd /home/sdresen/docker/portainer
./portainer-update-from-docker.sh; \

cd /home/sdresen/docker/techtools
./techtools-update-from-docker.sh; \

cd /home/sdresen/docker/whoogle
./whoogle-update-from-docker.sh; \

cd /home/sdresen/docker/opengist
./opengist-update-from-docker.sh; \

cd /home/sdresen/docker/rustdesk
./rustdesk-update-from-docker.sh; \

cd /home/sdresen/docker/authentik
./authentik-update-from-docker.sh; \

# No point in restarting pfElk since
# it doesn't auto-update
#cd /home/sdresen/docker/pfelk
#./pfelk-update-from-docker.sh; \

cd /home/sdresen/docker

clear

docker container list
