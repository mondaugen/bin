#!/bin/bash

# Switch to the nth window on the current desktop
# Window ordering is according to wmctrl

# If no argument, switches to 0th window.
if [ -z "$1" ]
then
    nwin=1
else
    nwin=$1
    if [ $nwin -lt 1 ]
    then
        nwin=1
    fi
fi

x=$(wmctrl -d | grep \* | awk '{print $1}')
y=$(wmctrl -l | grep '0x[0-9a-f]\+ \+'$x | head -n $nwin | tail -n1 | awk '{print $1}')
#y=$(wmctrl -l | grep '0x[0-9a-f]\+ \+'$x)
echo "$x"
echo "$y"
wmctrl -i -a$y

exit 0
