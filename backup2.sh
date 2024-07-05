#!/bin/bash
find ~ -type f -mtime -1 | while read file; do
  
    
    scp $file anything@192.168.1.12:~/backup/
    
    
    if [ $? -eq 0 ]; then
        echo $file has been backed up!
    else
        echo $file failed to backup
    fi
done
