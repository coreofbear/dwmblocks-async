#!/bin/sh
COMMAND=$(xset -q | grep LED | awk '{ print $10 }')

case "$COMMAND" in

 "00000000"|"00000001") LAYOUT="lat" ;;

 "00001000"|"00001001") LAYOUT="rus" ;;

  *) LAYOUT="??" ;;

esac

echo $LAYOUT
