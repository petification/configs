#!/bin/bash

cmd=$1

case "$cmd" in

    --up)
        forever start -l node-red.log --append /usr/local/bin/node-red
        ;;

    *)
        echo "Unknown command '$cmd'"
        exit 1
        ;;
esac
