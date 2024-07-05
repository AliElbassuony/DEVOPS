#!/bin/bash

for i in `find ~`;
do
   if [ -f $i ];then
	echo $i is file
   elif [ -d $i ]; then
	 echo $i is dir
   else
	echo $i is not file or directory! 
   fi
done
