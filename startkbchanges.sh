#!/bin/bash
# This line calls xmodmap to use ~/.Xmodmap
xmodmap /home/user/.Xmodmap

#This calls xcape and refreshes it, and gives some arguments.
/home/user/xcape/xcape
killall /home/user/xcape/xcape
/home/user/xcape/xcape -e 'Control_L=Escape;Shift_L=BackSpace;Shift_R=BackSpace;Hyper_L=space' -t 200
