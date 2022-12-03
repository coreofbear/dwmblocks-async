#!/bin/sh

CHARGE_LEVEL=`acpi -b | grep "Battery 0" | awk -F'[,:%]' '{print $3}'`
IS_PLUGGED=`acpi -a | grep "Adapter 0" | awk -F'[,:%]' '{print $2}'`

if [ " on-line" = "$IS_PLUGGED" ]; then
    echo "🔌$CHARGE_LEVEL%"
else
    if (( 20 < $CHARGE_LEVEL )); then
        echo "🔋$CHARGE_LEVEL% " 
    else
        echo "🪫$CHARGE_LEVEL% " 
    fi
fi

exit 0
    
