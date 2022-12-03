#!/bin/sh

case $BLOCK_BUTTON in
    1) ~/.dwmblocks_text/set_sink.sh ;;
esac

VOLUME_TEMP=`pamixer --get-volume-human | sed 's/%//g'`

if [ "muted" = "$VOLUME_TEMP" ]; then
    echo "mute"
    exit 0
fi
echo "vol $VOLUME_TEMP%"
