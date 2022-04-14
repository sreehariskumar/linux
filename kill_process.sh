#!/bin/bash
echo "Enter the process: " 
read x
PID=`ps -aux | grep ${x} | awk '{print $2}'`
kill -9 $PID >/dev/null 2>&1
