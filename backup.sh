#!/bin/bash

mkdir ~/backup -p
chmod 777 ~/backup
find ~ -mtime -1 2> /dev/null | xargs cp -t -r ~/backup 2>/dev/null

scp ~/backup/* anything@192.168.1.12:~/backup/ 

if [ $?=0 ];
then
for i in ~/backup/*
do
	echo $i has been backed up
done
fi

