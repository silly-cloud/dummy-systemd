#!/bin/bash

i=0

while true; do 
    echo "Dummy service is running ${i}" >> /home/viram/logs/dummy.log
    i=$((i + 1))
done

