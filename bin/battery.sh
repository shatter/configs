#!/bin/sh
FULL=$(cat /sys/class/power_supply/BAT1/charge_full)
PRESENT=$(cat /sys/class/power_supply/BAT1/present)
CHARGE=$(cat /sys/class/power_supply/BAT1/charge_now)
if test "$PRESENT" != "0" ; then
    CHARGE=$((${CHARGE}*100/${FULL}))
    echo "${CHARGE}%"
fi
