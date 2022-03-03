#!/bin/bash
LOGFILE="/var/log/keepalived/keepalived-redis-state.log"
echo "{fault}" >> $LOGFILE
date >> $LOGFILE
