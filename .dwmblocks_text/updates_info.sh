#!/bin/sh

printf "up "
pacman -Qu | wc -l
