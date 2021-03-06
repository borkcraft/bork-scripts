#!/bin/bash
rcon_password=uuid

# the docker command to stat the minecraft server
# 25565 is minecrafts default port 
# /opt/borkcraft is the directory on disk
docker run -d \
    -e VERSION=1.16.1 \
    -e EULA=TRUE \
    -e INIT_MEMORY=1G \
    -e MAX_MEMORY=3G \
    -e DIFFICULTY=hard \
    -e OPS=jak0bii \
    -e TYPE=FABRIC \
    -e SEED=-5886253804381427772 \
    -e SNOOPER_ENABLED=false \
    -e USE_AIKAR_FLAGS=true \
    -e WHITELIST=jak0bii \
    -e VIEW_DISTANCE=10 \
    -e ICON=https://github.com/borkcraft/bork-scripts/raw/master/icon.png \
    -e 'MOTD=Doko???' \
    -e MODS=https://github.com/borkcraft/bork-mods/raw/master/MixinBootstrap-1.0.3.jar,https://github.com/borkcraft/bork-mods/raw/master/fabric-api-0.14.1%2Bbuild.372-1.16.jar,https://github.com/borkcraft/bork-mods/raw/master/lithium-fabric-mc1.16.1-0.5.1.jar \
    -e RCON_PASSWORD=$rcon_password \
    -v /opt/borkcraft:/data \
    -p 25565:25565 \
    --restart unless-stopped \
    --name borkcraft itzg/minecraft-server
    