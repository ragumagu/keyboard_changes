#!/bin/bash
#This file puts the keyboard layout in modifier mode. That is, the space bar multiplexes with control and shift with backspace
#and caps lock is turned into control and escape.
# This line calls xmodmap to use ~/keyboard_changes/xmodmap_normal
xkbcomp /home/user/keyboard_changes/xkbNormal $DISPLAY

#This calls xcape and refreshes it, and gives some arguments.
xcape
killall xcape
xcape -e 'Control_L=Escape;Shift_L=BackSpace;Shift_R=BackSpace;Hyper_L=space' -t 100
echo "Keyboard is now in normal mode."
