#!/bin/sh

printf "root "
df -h | grep /dev/sda3 | awk '{print $3}'
