#!/bin/bash
# Program name: pingall.sh
date
cat ip_list.txt |  while read output
do
    ping -c 2 "$output" > /dev/null
    if [ $? -eq 0 ]; then
    echo "node $output is up" 
 #   ssh-keyscan -H $output >> ~/.ssh/known_hosts
    else
    echo "node $output is down"
    fi
done