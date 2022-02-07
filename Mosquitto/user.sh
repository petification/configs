#!/bin/bash

cmd=$1

case "$cmd" in

    --new)
        mosquitto_passwd /etc/mosquitto/passwd $2
        ;;

    --all)
        cat /etc/mosquitto/passwd
        ;;

    *)
        echo "Unknown command '$cmd'"
        ;;
esac
