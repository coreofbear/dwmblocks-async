#!/bin/sh

printf "💵 %.2f₽\n" `curl -s "rub.rate.sx/1USD"`
