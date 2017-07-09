#!/bin/sh
set -e

# Generate a password
password=$(head -c 12 /dev/urandom | base64 | sed 's/[\n\+\-\/_=]//g')

echo $password

cat <<EOF
#Minecraft server properties
#$(date)
generator-settings=
op-permission-level=4
allow-nether=true
level-name=world
enable-query=false
allow-flight=true
server-port=25565
level-type=DEFAULT
enable-rcon=true
rcon.password=${password}
rcon.port=25575
force-gamemode=false
level-seed=
server-ip=
max-build-height=256
spawn-npcs=true
white-list=false
spawn-animals=true
texture-pack=
hardcore=false
snooper-enabled=true
online-mode=true
pvp=true
difficulty=1
gamemode=0
player-idle-timeout=0
max-players=20
spawn-monsters=true
generate-structures=true
view-distance=10
motd=A Tekkit Server
EOF
