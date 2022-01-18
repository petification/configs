#!/bin/bash

cmd=$1

case "$cmd" in

    --status)
        lsof -i -n -P | grep 1880
        lsof -i -n -P | grep 1883
        lsof -i -n -P | grep 8883
        lsof -i -n -P | grep 8443
        ;;

esac
