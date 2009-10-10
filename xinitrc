export MOZ_DISABLE_PANGO=1
export OOO_FORCE_DESKTOP="gnome"

autocutsel -selection CLIPBOARD -fork &
autocutsel -selection PRIMARY -fork &
#setxkbmap -option ctrl:nocaps &

#xrandr --output VGA1 --dpi 96 --mode 1024x768 --right-of LVDS1
#xrandr --output LVDS1 --preferred --dpi 96 --mode 1280x800 --left-of VGA1

batt(){
    FULL=$(cat /sys/class/power_supply/BAT1/charge_full)
    PRESENT=$(cat /sys/class/power_supply/BAT1/present)
    CHARGE=$(cat /sys/class/power_supply/BAT1/charge_now)
    if test "$PRESENT" != "0" ; then
        CHARGE=$((${CHARGE}*100/${FULL}))
        echo "${CHARGE}%"
    fi
}

cputemp() {
    CPU=$(cat /sys/class/thermal/thermal_zone0/temp)
    TEMP=$((${CPU}/1000))
    echo "${TEMP}C"
}

while true; do

# dwm
#xsetroot -name "$(batt) | $(cputemp) | $(date +'%x | %I:%M:%S %p')"
#sleep 10
#done &
#xbindkeys &
#exec /home/daniel/bin/dwm

# i3
echo "$(batt) | $(cputemp) | $(date +'%x | %I:%M %p')"
sleep 10
done | dzen2 -ta r -bg black -fn "-xos4-terminus-medium-r-normal--12-120-72-72-c-60-iso8859-1" -xs 1 -dock &
exec /home/daniel/bin/i3-next >> ~/.i3/logfile
