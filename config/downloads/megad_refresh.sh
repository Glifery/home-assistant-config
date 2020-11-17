#!/bin/sh

/usr/bin/curl -X POST -H 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIyZWFkMDUxODQ1OTA0Y2IyYmJjYzdjZjk1NDc1NmEyNSIsImlhdCI6MTU5MDg1MDAzNCwiZXhwIjoxOTA2MjEwMDM0fQ.2QACR1129pcQZsnhGdMylSQLY7mjjI1gLBqxt-QE4zk' -H 'Content-Type: application/json' 'http://192.168.0.140:8123/api/events/megad_refresh'
