#!/bin/bash

# Solution 1: better for CLI but doesn't work from HA
#echo -n -e "\xA0\x02\x01\xA3\n\xA0\x02\x00\xA2" | nc -i 1 192.168.0.161 8080

# Solution 2: dirty for CLI but does work from HA
echo -n -e "\xA0\x02\x01\xA3" | nc 192.168.0.161 8080
sleep 0.4
echo -n -e "\xA0\x02\x00\xA2" | nc 192.168.0.161 8080

# For local run add "-q 1" parameter to nc