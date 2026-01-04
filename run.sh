#!/usr/bin/with-contenv bashio

echo "Starting Calibre Web!"

cps -p /data/cw.db -g /data/gd.db -o /tmp/cw.log
