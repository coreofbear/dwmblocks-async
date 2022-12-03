#!/bin/sh

SINK_DESC=`pamixer --list-sinks | awk 'BEGIN{FS="\""} {print $6}' | dmenu -fn "Cascadia Code PL: size=11" -nb "#002b36" -nf "#93a1a1" -sb "#6c71c4" -sf "#002b36" -l 10`

SINK_NAME=`pamixer --list-sinks | grep "$SINK_DESC" | awk 'BEGIN{FS="\""} {print $2}'`

pactl set-default-sink $SINK_NAME
