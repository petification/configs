#!/bin/bash

cmd=$1

case "$cmd" in
    
    --settings)
        rm -rf ~/.node-red/settings.js
        cp ./settings.js ~/.node-red/settings.js
        ;;

    --flows)
        rm -rf ~/.node-red/flows.json
        cp ./flows.json ~/.node-red/flows.json
        ;;

    *)
        echo "Unknown command '$cmd'"
        exit 1
        ;;

esac
