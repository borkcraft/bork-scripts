# Borkcraft Server

this server is managed with docker. for more information please see the[itzg/docker-minecraft-server](https://github.com/itzg/docker-minecraft-server) repository.


basic:

view logs

```
docker logs -f borkcraft
```


interact with minecraft console
```
docker exec -i borkcraft rcon-cli
```

start and stop the container

```
docker stop borkcraft

docker start borkcraft
```
