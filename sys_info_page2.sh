#!/bin/bash

TITLE="System Info Report For $HOSTNAME"
CURRENT_TIME="$(date +"%x%r%Z")"
TIMESTAMP="Generated $CURRENT_TIME, by $USER"

report_uptime(){
    echo -e "\nUptime:"
    uptime
}

report_disk_space(){
    echo -e "\nDisk Space:"
    df -h
}

report_home_space(){
    echo -e "\nHome Space:"
    du -sh /home/*
}

echo -e "\n$TITLE"
echo -e "$TIMESTAMP"
report_uptime
report_disk_space
report_home_space
