#!/bin/bash

#cmd_update=$(git pull)

#if [ "$cmd_update" != "Already up-to-date." ]; then
#    chmod 0755 "./rc_wlink_service_v2"
#fi

git pull

chmod 0755 "./rc_wlink_service_v2"
chmod 0755 "./bt_firewall/bt_firewall"

# shellcheck disable=SC2009
ID=$(ps -ef | grep "./rc_wlink_service_v2" | grep -v "grep" | awk '{print $2}')
if [ "$ID" ]; then
    kill "$ID"
fi

nohup "./rc_wlink_service_v2" &
echo "rc_wlink_service_v2 start success"

cd "./bt_firewall/" || exit

# shellcheck disable=SC2009
ID=$(ps -ef | grep "./bt_firewall" | grep -v "grep" | awk '{print $2}')
if [ "$ID" ]; then
    kill "$ID"
fi

nohup "./bt_firewall" &

echo "bt_firewall start success"