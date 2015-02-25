#!/bin/sh

COUNT=0

ipset list banned-copy | while read LINE; do
  
  COUNT=$(($COUNT + 1))
  if test $COUNT -gt 6; then
      wget https://www.badips.com/add/ssh/${LINE} -O - >/dev/null
      ipset del banned-copy $LINE
      echo $LINE
  fi
  
done


