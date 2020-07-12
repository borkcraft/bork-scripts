# Borkcraft Server

this server is managed with docker. for more information please see the [itzg/docker-minecraft-server](https://github.com/itzg/docker-minecraft-server) repository.


## Basic Management

install from scratch

```bash
./install.sh
```

start the server

```bash
./start.sh
```

view logs
```bash
docker logs -f borkcraft
```


send commands to the minecraft console

```
docker exec borkcraft rcon-cli <minecraft command>
```

start and stop the minecraft server

```bash
docker stop borkcraft

docker start borkcraft
```

backup durring gameplay

```bash
./backup.sh
```