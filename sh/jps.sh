#!/bin/bash

for host in 192.168.96.129 192.168.96.130 192.168.96.131
do
  echo "---------- $host jps--------------"
  ssh $host "/opt/jdk1.8.0_361/bin/jps"
done
