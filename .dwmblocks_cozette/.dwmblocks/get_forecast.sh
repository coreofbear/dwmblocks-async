#!/bin/sh

touch ~/.dwmblocks/forecast_temp.txt
> ~/.dwmblocks/forecast_temp.txt
curl wttr.in/?format="%x+%t+(%f)\n" >> ~/.dwmblocks/forecast_temp.txt | exit 1

case "`awk '{print $1}' ~/.dwmblocks/forecast_temp.txt`" in
    "?") WEATHER_EMOJI="❓" ;;
    "mm") WEATHER_EMOJI="☁" ;;
    "=") WEATHER_EMOJI="🌫" ;;
    "///") WEATHER_EMOJI="💧" ;;
    "//") WEATHER_EMOJI="💧" ;;
    "**") WEATHER_EMOJI="❄" ;;
    "*/*") WEATHER_EMOJI="❄💧" ;;
    "/") WEATHER_EMOJI="🌧 " ;;
    ".") WEATHER_EMOJI="🌧 " ;;
    "x") WEATHER_EMOJI="🌧 " ;;
    "x/") WEATHER_EMOJI="🌧 " ;;
    "*") WEATHER_EMOJI="🌨 " ;;
    "*/") WEATHER_EMOJI="🌨 " ;;
    "m") WEATHER_EMOJI="⛅" ;;
    "o") WEATHER_EMOJI="☀" ;;
    "/!/") WEATHER_EMOJI="⚡💧" ;;
    "!/") WEATHER_EMOJI="⛈ " ;;
    "*!*") WEATHER_EMOJI="⚡❄" ;;
    "mmm") WEATHER_EMOJI="☁" ;;
    *) exit 1 ;;
esac

printf "%s %s\n" ${WEATHER_EMOJI} `awk '{print $2}' ~/.dwmblocks/forecast_temp.txt` 
