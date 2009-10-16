#!/bin/sh
CPU=$(cat /sys/class/thermal/thermal_zone0/temp)
TEMP=$((${CPU}/1000))
echo "${TEMP}C"
