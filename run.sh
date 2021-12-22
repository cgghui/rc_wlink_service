#!/bin/bash

chmod 0755 "./rc_wlink_service_v2"
chmod 0755 "./bt_firewall/bt_firewall"
chmod 0755 "./update_site_manager"

./update_site_manager

# shellcheck disable=SC2009
ID=$(ps -ef | grep "./rc_wlink_service_v2" | grep -v "grep" | awk '{print $2}')
if [ "$ID" ]; then
    kill "$ID"
    echo "kill rc_wlink_service_v2 id: $ID"
fi
nohup "./rc_wlink_service_v2" >> ./log.log 2>&1 &
echo "rc_wlink_service_v2 start success"

cd "./bt_firewall/" || exit

# shellcheck disable=SC2009
ID=$(ps -ef | grep "./bt_firewall" | grep -v "grep" | awk '{print $2}')
if [ "$ID" ]; then
    kill "$ID"
    echo "kill bt_firewall id: $ID"
fi
nohup "./bt_firewall" >> ./log.log 2>&1 &
echo "bt_firewall start success"