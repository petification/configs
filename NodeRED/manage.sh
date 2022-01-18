#!/bin/bash

cmd=$1

case "$cmd" in

    --up)
        forever start -l node-red.log --append /usr/local/bin/node-red
        ;;

    --export)
        cp ~/.node-red/flows.json ./flows.json
        ;;

    *)
        echo "Unknown command '$cmd'"
        exit 1
        ;;
esac
