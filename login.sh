#!/bin/sh

# get ipaddress
IP_ADDRESS=`ifconfig eth0|grep inet|awk '{print $1}'|cut -d: -f2`

# get ipaddress's last character
GRADE=`echo $IP_ADDRESS | sed -e "s/^.*\(.\)$/\1/"`

export DISPLAY=":0.0" && xdotool type pi-J${GRADE} && xdotool key Tab && xdotool type pi-J${GRADE} && xdotool key Return
