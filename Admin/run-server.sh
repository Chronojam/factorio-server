#!/bin/bash
wget https://static.placeholder-software.co.uk/.factorio/modpack/latest.zip -O /tmp/mods.zip
unzip /tmp/mods.zip -d /factorio/mods/

wget https://static.placeholder-software.co.uk/.factorio/saves/latest.zip -O /factorio/saves/latest.zip

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/env.sh
docker run chronojam/factorio-server:$FACTORIO_VERSION -v /factorio:/factorio/factorio:rw
