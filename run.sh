#!/bin/bash

## shellcheck disable=SC2009
#ID=$(ps -ef | grep "./rc_wlink_update" | grep -v "grep" | awk '{print $2}')
#if [ "$ID" ]; then
#    kill "$ID"
#    echo "kill rc_wlink_update id: $ID"
#fi
#nohup "./rc_wlink_update" >> ./log_rc_wlink_update.log 2>&1 &
#echo "rc_wlink_update start success"

cd ./xxf_clear || exit
chmod 0755 "./delete_domain.txt"
./clear