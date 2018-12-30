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

I have set up this mod using xcape (Thank you, /u/alols @github) and some other scripts. You have to set up xcape first.
Head over to https://github.com/alols/xcape and install it.

Then clone this repository. Make necessary changes to the paths in these lines in the scripts:
In keyboard_normal.sh:
`xkbcomp /home/user/keyboard_changes/xkbNormal $DISPLAY`
and in keyboard_space_control_off.sh:
`xkbcomp /home/user/keyboard_changes/xkbSCO $DISPLAY`

You will need to give the scripts some permissions in order to make them executable.
```
chmod +x /home/user/keyboard_changes/keyboard_normal.sh
chmod +x /home/user/keyboard_changes/keyboard_space_control_off.sh
```
It helps to set up aliases in your .bashrc to quickly change between layouts, like:
 ```
 alias kk='keyboard_normal.sh'
 alias kj='keyboard_space_control_off.sh'
 ```
Now, you can type
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
The xmodmap files are easily modifiable. So, if you want to make any changes, modify the xmodmap files, then generate the xkb layout using:
```
$ xkbcomp :0 newLayoutFile
```
Now change the xkbcomp lines in the scripts to include the new newLayoutFile.
The transition to xkb is necessary because xmodmap is depreciated.
