#!/bin/bash
ALIVE=`/usr/local/bin/redis-cli PING`
if [ "$ALIVE" == "PONG" ]; then
echo $ALIVE
exit 0
else
echo $ALIVE
exit 1
fi
