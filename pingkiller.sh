#!/bin/bash 

ps > ps.txt
cat ps.txt |grep "ping" |cut -d " " -f 4  > pid.txt
for pid in $(cat pid.txt); do kill $pid 2> /dev/null  &
 done

