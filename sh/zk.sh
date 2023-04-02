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
    echo "-----------启动 $host zk--------------"
    ssh $host "/opt/module/zk-3.5.7/bin/./zkServer.sh start"
  done
;;
"stop")
  for host in 192.168.96.129 192.168.96.130 192.168.96.131
  do
    echo "-----------停止 $host zk--------------"
    ssh $host "/opt/module/zk-3.5.7/bin/./zkServer.sh stop"
  done
;;
"status")
  for host in 192.168.96.129 192.168.96.130 192.168.96.131
  do
    echo "-----------停止 $host zk--------------"
    ssh $host "/opt/module/zk-3.5.7/bin/./zkServer.sh status"
  done
;;
esac