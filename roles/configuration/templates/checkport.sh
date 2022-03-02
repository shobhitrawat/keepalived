#!/bin/bash
IP=`hostname -I | cut -f1 -d' '`

for port in "$@"
do
tcping -x 1 $IP $port| grep "open"
  if [ "$?" -eq "1" ]
  then
       exit 1
fi

done
