#!/bin/bash
REDISCLI="/usr/local/bin/redis-cli"
LOGFILE="/var/log/keepalived/keepalived-redis-state.log"
echo "[backup]" >> $LOGFILE
date >> $LOGFILE
echo "Being slave...." >> $LOGFILE 2>&1
echo "Run SLAVEOF cmd ..." >> $LOGFILE
$REDISCLI SLAVEOF 192.168.13.64 7501 >> $LOGFILE 2>&1
