#!/bin/sh

curl wttr.in/?format="%C+%t\n" | awk '{print tolower($0)}'
