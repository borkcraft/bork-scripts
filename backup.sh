#!/bin/bash
# this script can safely be run while the minecraft server is running.
BackupDirectory="/opt/borkcraft/backups"
WorldDirectory="/opt/borkcraft/world"


# Define a timestamp function
timestamp() {
  date +"%Y%m%d%H%M%S"
}

#notify player of possible performance degradation
docker exec borkcraft rcon-cli say  "backing things up. you may experience some momentary lag, sorry."

# stop minecraft from writing to disk
docker exec borkcraft rcon-cli save-off

# tar ball the world directory
BackupFile=$BackupDirectory"/$(timestamp).tar"
tar -cvf $BackupFile $WorldDirectory

# start saving to disk again
docker exec borkcraft rcon-cli save-on


#notify player of possible performance degradation
docker exec borkcraft rcon-cli say "backup completed. happy crafting!"