#!/bin/sh

SINK_DESC=`pamixer --list-sinks | awk 'BEGIN{FS="\""} {print $6}' | dmenu -fn "Cozette:size=11:bold" -nb "#242424" -nf "#ffffff" -sb "#ffffff" -sf "#242424" -l 10`

SINK_NAME=`pamixer --list-sinks | grep "$SINK_DESC" | awk 'BEGIN{FS="\""} {print $2}'`

pactl set-default-sink $SINK_NAME
