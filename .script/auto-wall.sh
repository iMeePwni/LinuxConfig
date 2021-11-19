#!/usr/bin/bash
img=(`find /home/guofeng/.wallpaper/ -name '*' -exec file {} \; | grep -o -P '^.+: \w+ image' | cut -d':' -f1`)
while true
do
   feh --bg-scale "${img[$RANDOM % ${#img[@]} ]}"
   sleep 30m
done
