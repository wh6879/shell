#!/bin/bash

#1. 判断参数个数
if [ $# -lt 1 ]
then
	echo Not Enough Arg!
	exit!
fi

#2 遍历集群所有机器
for host in 192.168.96.129 192.168.96.130 192.168.96.131
do
	echo ====================$host========================
	#3 遍历目录 依次分发
	for file in $@
	do
		#4 判断文件是否存在
		if [ -e $file ]
			then
				#5 获取父目录
				pdir=$(cd -P $(dirname $file); pwd)

				#6 获取当前文件名称
				fname=$(basename $file)
				ssh $host "mkdir -p $pdir"
				rsync -av $pdir/$fname $host:$pdir
			else
				echo $file does not exists!
		fi
	done
done