#!/bin/bash
xmodmap /home/user/.Xmodmap
/home/user/xcape/xcape
killall /home/user/xcape/xcape
/home/user/xcape/xcape -e 'Control_L=Escape;Shift_L=BackSpace;Shift_R=BackSpace' -t 300
