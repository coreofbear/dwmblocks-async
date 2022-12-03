#!/bin/sh

printf "💾 "
df -h | grep /dev/sda3 | awk '{print $3}'
