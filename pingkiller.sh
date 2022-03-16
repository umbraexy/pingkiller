#!/bin/bash 
#andres
#3/16/2022
# redirects information extracted from ps
ps > ps.txt
# extracts PID from process line
cat ps.txt |grep "ping" |cut -d " " -f 4  > pid.txt
# kills the ping process by using the extracted PID
for pid in $(cat pid.txt); do kill $pid 2> /dev/null  &
 done

