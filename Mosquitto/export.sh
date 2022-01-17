#!/bin/bash

cmd=$1

case "$cmd" in

    --conf)
        cp ./broker.conf /etc/mosquitto/conf.d/broker.conf
        ;;

    --acl)
        cp ./broker.acl /etc/mosquitto/conf.d/broker.acl
        ;;

    *)
        echo "Unknown command '$cmd'"
        exit 1
        ;;

esac
