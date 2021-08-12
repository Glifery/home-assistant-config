#!/bin/sh

/usr/bin/curl "http://192.168.0.141/sec/?cmd=7:0;8:0;9:0;10:0;12:0;13:0"
/usr/bin/curl "http://192.168.0.141/sec/?cmd=22:0;23:0;25:0;27:0;28:0"
/usr/bin/curl "http://192.168.0.142/sec/?cmd=7:0;8:0;10:0;12:0;13:0"
/usr/bin/curl "http://192.168.0.142/sec/?cmd=22:0;23:0;24:0"
