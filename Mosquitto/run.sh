#!/bin/bash

cmd=$1

case "$cmd" in

    --init)
        mosquitto -c /etc/mosquitto/conf.d/broker.conf -v > mosquitto.log &
        ;;
esac

tail -f mosquitto.log
