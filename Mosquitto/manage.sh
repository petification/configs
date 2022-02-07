#!/bin/bash

cmd=$1

case "$cmd" in

    --up)
        mosquitto -c /etc/mosquitto/conf.d/broker.conf -v > mosquitto.log &
        ;;

    --log)
        tail -f mosquitto.log
        ;;

    --down)
        pkill mosquitto
        echo "Mosquitto down"
        ;;

    *)
        echo "Unknown command '$cmd'"
        exit 1
        ;;

esac
