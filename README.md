# keyboard_changes
This repo includes some keyboard modifications that I use on my systems.

I use the standard qwerty layout. In the following image, you can see the changes that I have implemented.

<!-- #![alt tag](https://cloud.githubusercontent.com/assets/22856511/19884944/0d7d292c-a042-11e6-91bd-4b40046dc791.png)

<!-- ![alt tag](https://github.com/shrinidhihr98/keyboard_changes/keyboard layout normal.png) -->

![keyboard-layout normal](https://user-images.githubusercontent.com/22856511/37712532-33175aaa-2d3a-11e8-8c14-891fc60c4452.png)


This feels a little buggy when you type too fast (this is not a bug, but a consequence of using the programs in this way).
So you might want to be able to easily turn off Space + Control for fast typing.

<!-- ![alt tag](https://cloud.githubusercontent.com/assets/22856511/19884946/0ee6a52c-a042-11e6-8f4d-603a57992180.png) -->
![keyboard-layout space_control_off](https://user-images.githubusercontent.com/22856511/37712568-474d123a-2d3a-11e8-8141-7ece306ced9e.png)

I have set up this mod using xcape (Thank you, /u/alols @github) and some other scripts. 

## Installation:

1. First, back up your current xkb layout using: 
```
$ xkbcomp :0 xkbLayoutBackup
```

2. You have to set up xcape.
Head over to https://github.com/alols/xcape and install it.

3. Clone this repository. 
```
$ git clone https://github.com/shrinidhihr98/keyboard_changes
```
4. Cd into the repository:
```
$ cd /home/user/keyboard_changes
```
5. Make necessary changes to the paths in these lines in the scripts:

In keyboard_normal.sh:
```
xkbcomp -w 0 /home/shrinidhi/keyboard_changes/xkbNormal $DISPLAY
#xmodmap /home/user/keyboard_changes/xmodmap_normal
```
and in keyboard_space_control_off.sh:
```
xkbcomp -w 0 /home/user/keyboard_changes/xkbSCO $DISPLAY
#xmodmap /home/user/keyboard_changes/xmodmap_space_control_off
```
Although lines containing xmodmap are comments, it is better to set them at once if you ever decide to switch between them.

6. You will need to give the scripts some permissions in order to make them executable.
```
chmod +x keyboard_normal.sh
chmod +x keyboard_space_control_off.sh
```

## Usage:

1. It helps to set up aliases in your .bashrc to quickly change between layouts, like:
 ```
 alias kk='/home/user/keyboard_changes/keyboard_normal.sh'
 alias kj='/home/user/keyboard_changes/keyboard_space_control_off.sh'
 ```
2. Now, you can type
```
$ kk
```
to enter the normal mode where you have Spacebar acting as a Space when pressed and released, and a Control modifier when used with other keys.

You can type
```
$ kj
```
to turn off the Space+Ctrl option and keep the other options the same.

### Note: 
There is an issue with speed and text appearing slower than expected, when using these scripts in Ubuntu 18.04.

xkb makes the scripts work a little faster. So, by default the scripts run with xkbcomp.

The xmodmap files are easily modifiable. But, xmodmap is depreciated. So, if you want to make any changes, 

1. Modify the xmodmap files.
2. Comment out the xkbcomp lines and uncomment the xmodmap lines.  Also modify the paths in those lines, if any changes are required.
3. Run the scripts using kk and kj aliases. Cd into the keyboard_changes folder and generate the new layouts.
```
$ kk
$ xkbcomp :0 xkbNormal
$ kj
$ xkbcomp :0 xkbSCO
```
4. Now, revert back by commenting out the xmodmap lines and uncommenting xkbcomp lines.
 
Note that the change to xkbcomp causes a set of warnings to be displayed. These warnings are non-critical, and do not interfere in the working of these scripts. The warnings are raised for undefined and obscure keycodes which are not necessary. These warnings are disabled by putting `-w 0` when calling xkbcomp. However, if the scripts stop working, please raise an issue.
