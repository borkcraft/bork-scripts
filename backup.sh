#!/bin/bash
# this script can safely be run while the minecraft server is running.
BackupDirectory="/opt/borkcraft/backups"
WorldDirectory="/opt/borkcraft/world"


# Define a timestamp function
timestamp() {
  date +"%Y%m%d%H%M%S"
}

#notify player of possible performance degradation
docker exec mc rcon-cli msg backing up the world

# stop minecraft from writing to disk
docker exec mc rcon-cli save-off

# tar ball the world directory
tar -cvf (BackupDirectory + "/" + timestamp + ".tar") WorldDirectory

# start saving to disk again
docker exec mc rcon-cli save-on