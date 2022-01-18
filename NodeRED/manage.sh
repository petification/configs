#!/bin/bash

cmd=$1
nr=$(which node-red)

case "$cmd" in

    --up)
        forever start -l node-red.log --append $nr
        ;;

    --down)
        forever stop --append $nr
        ;;

    --log)
        tail -f /root/.forever/node-red.log
        ;;

    *)
        echo "Unknown command '$cmd'"
        exit 1
        ;;
esac
