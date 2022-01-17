#!/bin/bash

cmd=$1

case "$cmd" in

    --conf)
        cp ./broker.conf /etc/mosquitto/conf.d/broker.conf
        ;;

    --acl)
        echo "Exporting ACL is not supported right now because of security"
        ;;

    *)
        echo "Unknown command '$cmd'"
        exit 1
        ;;

esac
