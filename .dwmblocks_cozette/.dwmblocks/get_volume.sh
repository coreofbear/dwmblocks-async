#!/bin/sh

case $BLOCK_BUTTON in
    1) ~/.dwmblocks/set_sink.sh ;;
esac

VOLUME_TEMP=`pamixer --get-volume-human | sed 's/%//g'`

if [ "muted" = "$VOLUME_TEMP" ]; then
    echo 🔇
    exit 0
fi

case "$(($VOLUME_TEMP / 35))" in
    0) echo "🔈 $VOLUME_TEMP%" ;;
    1) echo "🔉 $VOLUME_TEMP%" ;;
    2) echo "🔊 $VOLUME_TEMP%" ;;
    *) echo "error" ;;
esac
