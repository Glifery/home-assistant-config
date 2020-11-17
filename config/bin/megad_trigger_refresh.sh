#!/bin/sh

MEGAD=$1
PORT=$2
STATE=$3

REPLACE_POSITION=$((PORT+1))
STATE_STRING=$(echo "$STATE" | sed -e 's:^1$:ON:' -e 's:^0:OFF:')
REPLACE_COMMAND="{gsub(\"..*\",\"$STATE_STRING\",\$$REPLACE_POSITION)}1"
STATES_FILE="/config/downloads/megad$MEGAD.txt"

STATES_OUTPUT=`awk -F\; $REPLACE_COMMAND OFS=\; $STATES_FILE`
echo $STATES_OUTPUT > $STATES_FILE

STATE_JSON="{\"state\": \"$(echo "$STATE" | sed -e 's:^1$:ON:' -e 's:^0:OFF:')\"}"

/usr/bin/curl "http://192.168.0.14$MEGAD/sec/?cmd=$PORT:$STATE"
/usr/bin/curl -X POST "http://192.168.0.140:8123/api/states/switch.megad$1_p$2" -H 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIwZGRjNjk2NTI3YjM0MjlmOWNkMjViMjFlZTAyMWU4NyIsImlhdCI6MTYwMTQ3MjE3MSwiZXhwIjoxOTE2ODMyMTcxfQ.LZeaEN9cN45jV86AU2oHpwXb8rOPI4yAgocQDRRo1zE' -H 'Content-Type: application/json' -d "$STATE_JSON"
#/usr/bin/curl "http://192.168.0.14$MEGAD/sec/?cmd=all" --output /config/downloads/megad$MEGAD.txt
