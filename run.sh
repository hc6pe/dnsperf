#!/bin/bash

[ -z "$1" ] && { /bin/echo "don't forget to pass the IP to dnsperf"; exit 1; };
/bin/gzip -dc /queryfile-latest.gz|/bin/shuf|/usr/bin/dnsperf -c 10 -T10 -Q 550 -s $1
