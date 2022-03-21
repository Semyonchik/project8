#!/bin/bash
a=$(curl -I http://192.168.88.74:9889 2>/dev/null | head -n 1 | cut -d$' ' -f2)
b=sudo md5sum /tmp/test/index.html | cut -d ' ' -f 1
wget http://192.168.88.74:9889 -P /tmp/test/1/
c=sudo md5sum /tmp/test/1/index.html | cut -d ' ' -f 1
if [[ $a != 200 || "$b" != "$c" ]]
then
  exit 2
else
  exit 1
fi
