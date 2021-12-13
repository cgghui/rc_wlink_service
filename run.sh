#!/bin/bash

cmd_update=$(git pull)

if [ "$cmd_update" != "Already up-to-date." ]; then
    chmod 0755 "./rc_wlink_service_v2"
fi

ID=$(ps -ef | grep "./rc_wlink_service_v2" | grep -v "grep" | awk '{print $2}')
if [ $ID ]; then
    kill $ID
fi

nohup "./rc_wlink_service_v2" &

echo "Done."