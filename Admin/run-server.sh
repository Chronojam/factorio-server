#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/env.sh
docker run chronojam/factorio-server:$FACTORIO_VERSION -v /factorio:/factorio/factorio:rw
