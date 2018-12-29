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

Then clone this repository; you will need to give the scripts some permissions in order to make them executable.
```
chmod +x /home/user/keyboard_changes/keyboard_normal.sh
chmod +x /home/user/keyboard_changes/keyboard_space_control_off.sh
```
It helps to set up aliases in your .bashrc to quickly change between layouts, like:
 ```
 alias kk='keyboard_normal.sh'
 alias kj='keyboard_space_control_off.sh'
 ```
 Although, Xmodmap is not recommended, I have used it because it is easier to use(to switch source files) than xkb and 
 works perfectly for my purpose.
