#!/bin/bash
#   ┌─┐┌─┐┬ ┬┌─┐┬─┐
#   ├─┘│ ││││├┤ ├┬┘
#   ┴  └─┘└┴┘└─┘┴└─

center()
{ 
IFS=""
while read L
do
printf "%b\n" $(printf "%.$((($(tput cols)-${#L})/2))d" 0 | sed 's/0/ /g')$L
done
}

echo -en "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
echo -en "off\nreb\nsus\nout\n" | center

read v

case $v in
o | off)
    sudo shutdown now
    ;;
r | reb | reboot)
    sudo reboot
    ;;
s | sus | suspend)
    systemctl suspend
    herbstclient close
    ;;
o | out | logout)
    pkill -9 -u USR1
    ;;

esac
