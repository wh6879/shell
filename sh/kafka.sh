#!/bin/bash

#1. 判断参数个数
if [ $# -lt 1 ]
then
	echo Not Enough Arg!
	exit!
fi

case $1 in
"start")
  for host in 192.168.96.129 192.168.96.130 192.168.96.131
  do
    echo "-----------启动 $host kafka--------------"
    ssh $host "/opt/module/kafka/bin/kafka-server-start.sh -daemon /opt/module/kafka/config/server.properties"
  done
;;
"stop")
  for host in 192.168.96.129 192.168.96.130 192.168.96.131
  do
    echo "-----------停止 $host kafka--------------"
    ssh $host "/opt/module/kafka/bin/kafka-server-stop.sh"
  done
;;
esac