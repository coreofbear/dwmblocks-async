#!/bin/sh

printf "📦 "
pacman -Q | wc -l
