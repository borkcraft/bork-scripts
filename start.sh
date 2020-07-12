#!/bin/bash

# the docker command to stat the minecraft server
# 25565 is minecrafts default port 
# /opt/borkcraft is the directory on disk
docker run -d \
    -e EULA=TRUE \
    -e INIT_MEMORY=1G \
    -e MAX_MEMORY=7G \
    -e DIFFICULTY=hard \
    -e OPS=jak0bii \
    -e TYPE=FABRIC \
    -e SEED=-5886253804381427772 \
    -e SNOOPER_ENABLED=false \
    -e USE_AIKAR_FLAGS=true \
    -e WHITELIST=jak0bii \
    -e VIEW_DISTANCE=8 \
    -e ICON=https://raw.githubusercontent.com/borkcraft/bork-scripts/master/icon.png \
    -v /opt/borkcraft:/data \
    -p 25565:25565 \
    --restart unless-stopped \
    --name borkcraft itzg/minecraft-server
    