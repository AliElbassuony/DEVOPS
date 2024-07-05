#!/bin/bash

for i in `find ~ -mtime -1 2>/dev/null -exec scp '{}'  anything@192.168.1.12:~/backup/ \;`;
do

    echo $i has been backed up!

done


