#!/bin/sh

printf "ram "
free -h | awk '/^Mem/ { print $3}' | sed s/i//g

