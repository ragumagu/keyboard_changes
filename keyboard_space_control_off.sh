#!/bin/bash
# This file turns off the dual role of Spacebar as Space and Control. After executing this, the spacebar is no longer a modifier, 
# and only emits a space character. However, the other changes remain.

# This line calls xkbcomp to use ~/keyboard_changes/xkbSCO layout (xkbSpaceControlOff).
xkbcomp -w 0 /home/user/keyboard_changes/xkbSCO $DISPLAY

# Using xmodmap
# xmodmap /home/user/keyboard_changes/xmodmap_space_control_off

#This calls xcape and refreshes it, and gives some arguments.
xcape
killall xcape
xcape -e 'Shift_L=BackSpace;Shift_R=BackSpace' -t 100
echo "Keyboard layout is now in space_control_off mode."
