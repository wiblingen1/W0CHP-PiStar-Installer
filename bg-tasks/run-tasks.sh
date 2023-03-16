#!/bin/bash

# vars
BackendURI="https://repo.w0chp.net/WPSD-Dev/W0CHP-PiStar-Installer/raw/branch/master/bg-tasks/run-tasks.sh"
psVer=$( grep Version /etc/pistar-release | awk '{print $3}' )
CALL=$( grep "Callsign" /etc/pistar-release | awk '{print $3}' )
osName=$( lsb_release -cs )
versionCmd=$( git --work-tree=/usr/local/sbin --git-dir=/usr/local/sbin/.git rev-parse --short=10 HEAD )
uuidStr=$(egrep 'UUID|ModemType|ModemMode|ControllerType' /etc/pistar-release | awk {'print $3'} | tac | xargs| sed 's/ /_/g')
modelName=$(grep -m 1 'model name' /proc/cpuinfo | sed 's/.*: //')
hardwareField=$(grep 'Model' /proc/cpuinfo | sed 's/.*: //')
hwDeetz="${hardwareField} - ${modelName}"
uaStr="WPSD-Bootstrap-Task Ver.# ${psVer} ${versionCmd} Call:${CALL} UUID:${uuidStr} [${hwDeetz}] [${osName}]"

# bg / bootstrap taks
#env GIT_HTTP_CONNECT_TIMEOUT="2" env GIT_HTTP_USER_AGENT="${uaStr}" git --work-tree=/usr/local/sbin --git-dir=/usr/local/sbin/.git pull origin master > /dev/null 2<&1
#env GIT_HTTP_CONNECT_TIMEOUT="2" env GIT_HTTP_USER_AGENT="${uaStr}" git --work-tree=/usr/local/sbin --git-dir=/usr/local/sbin/.git reset --hard origin/master > /dev/null 2<&1
