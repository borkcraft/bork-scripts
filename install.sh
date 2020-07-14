# install docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# remove auto updates
# this screws with in game performance!
sudo apt remove unattended-upgrades -y

# setup borkcraft 
mkdir /opt/borkcraft
mkdir /opt/borkcraft/backups

# pull mods
cd /opt/borkcraft
git clone -o mods https://github.com/borkcraft/bork-mods.git

# pull database
mkdir /opt/borkcraft/world
cd /opt/borkcraft/world
git clone https://github.com/borkcraft/bork-datapacks.git datapacks