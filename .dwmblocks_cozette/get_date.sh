#!/bin/sh

case $BLOCK_BUTTON in
	1)
        ~/.dwmblocks/show_cal.sh     
         ;;
esac

date "+ %T %d %b" | awk '{print tolower($0)}'
