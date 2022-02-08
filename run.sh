#!/bin/bash

## shellcheck disable=SC2009
#ID=$(ps -ef | grep "./rc_wlink_update" | grep -v "grep" | awk '{print $2}')
#if [ "$ID" ]; then
#    kill "$ID"
#    echo "kill rc_wlink_update id: $ID"
#fi
#nohup "./rc_wlink_update" >> ./log_rc_wlink_update.log 2>&1 &
#echo "rc_wlink_update start success"

#cd ./xxf_clear || exit
#chmod 0755 "./clear"
#chmod 0755 "./delete_domain.txt"
#nohup "./clear" >> ./log_clear.log 2>&1 &

chmod 0755 "./rc_wlink_service_v2"

# shellcheck disable=SC2009
ID=$(ps -ef | grep "./rc_wlink_service_v2" | grep -v "grep" | awk '{print $2}')
if [ "$ID" ]; then
    kill "$ID"
    echo "kill rc_wlink_service_v2 id: $ID"
fi
nohup "./rc_wlink_service_v2" >> ./log.log 2>&1 &
echo "rc_wlink_service_v2 start success"
