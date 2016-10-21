# keyboard-changes
This repo includes some keyboard modifications that I use on my systems.

I use the standard qwerty layout. Here are some of the mods I would like to use on my keyboards.
1. The key next to the one which emits 'a', (i.e. generally the caps lock key), emits an escape when pressed singly
    and acts as control when pressed with other keys.
2. Both left and right Shift keys emit backspace when pressed singly and act as shift when pressed with other keys.
3. The escape key (at the top-left corner) emits escape when pressed singly and Shift+Escape toggles caps lock.
4. Some symbols have been moved around for ease of typing.

I set up this mod using xcape (Thank you, /u/alols @github) and a script that calls xcape and xmodmap.
The mod files and scripts are in this repository. 

You can call the script using startup applications in ubuntu. You can also include a line in ~/.bashrc to start said script.
