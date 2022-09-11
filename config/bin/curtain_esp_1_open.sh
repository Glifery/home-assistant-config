#!/bin/bash

# Solution 1: better for CLI but doesn't work from HA
#echo -n -e "\xA0\x01\x01\xA2\n\xA0\x01\x00\xA1" | nc -i 1 192.168.0.161 8080

# Solution 2: dirty for CLI but does work from HA
echo -n -e "\xA0\x01\x01\xA2" | nc -q 1 192.168.0.161 8080
sleep 0.4
echo -n -e "\xA0\x01\x00\xA1" | nc -q 1 192.168.0.161 8080

# For local run add "-q 1" parameter to nc