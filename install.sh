# install docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# remove auto updates
# this screws with ingame performance!
sudo apt remove unattended-upgrades -y

# setup borkcraft 
mkdir /opt/borkcraft
mkdir /opt/borkcraft/backups
