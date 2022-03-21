#!/bin/bash
a=curl -I http://192.168.88.74:9889 2>/dev/null | head -n 1 | cut -d$' ' -f2
b=md5sum /tmp/test/index.html
wget http://192.168.88.74:9889 -P /tmp/test/1/
c=md5sum /tmp/test/1/index.html
if [  $a != 200 ] && [ $b != $c ]
then
  echo 1111
else 
  echo 2222
fi
