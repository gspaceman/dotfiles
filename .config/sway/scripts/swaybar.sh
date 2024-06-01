date=$(date +"%A %y.%m.%d %H:%M:%S")
battery=$(acpi | cut -d"," -f2 | cut -d" " -f2)
vol=$(pamixer --get-volume)
mute=$(pamixer --get-mute)

if [ $mute = "true" ]
then
    vol="M"
fi

echo "VOL:$vol% | BAT: $battery | $date"
