#!/bin/bash

cmd=$1

case "$cmd" in
    
    --setting)
        rm -rf ~/.node-red/settings.js
        cp ./settings.js ~/.node-red/settings.js
        ;;

    --flows)
        rm -rf ~/.node-red/flows.json
        cp ./flows.json ~/.node-red/flows.json
        ;;

esac
