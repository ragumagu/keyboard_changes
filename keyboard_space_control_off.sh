#!/bin/bash
#This file puts the keyboard layout in qwerty mode. That is, although xcape allows shift with backspace, spacebar remains as
#a space and caps lock is turned into a escape.
# This line calls xkbcomp to use ~/keyboard_changes/xkbSCO layout (xkbSpaceControlOff).
xkbcomp /home/shrinidhi/keyboard_changes/xkbSCO $DISPLAY

#This calls xcape and refreshes it, and gives some arguments.
xcape
killall xcape
xcape -e 'Shift_L=BackSpace;Shift_R=BackSpace' -t 100
echo "Keyboard layout is now in space_control_off mode."
