#!/bin/bash

for (( count=0; count<3; count++));
do
        systemctl status haproxy > /dev/null 2>&1
        if [ $? -eq 0 ]
        then
                exit 0
        fi
done
systemctl stop keepalived
exit 1