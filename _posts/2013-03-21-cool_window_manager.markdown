---
layout: post
title: X Window Manager Review -- Window Lab
---

# {{ page.title }}

### March 21, 2013 - Portland

I finally found I've been looking for today: windowlab.

Here is a picture of me writing this blog post in window lab.

<img src="/images/window_lab_writing.png" width="700"/>

In this post I'll cover how to install windowlab on a modern ubuntu system and how to configure the best features from other desktop environments in a windowlab desktop.

#### How to install

`apt-get install windowlab`

or check out the source at <a href="http://nickgravgaard.com/windowlab/">http://nickgravgaard.com/windowlab/</a>

#### Usage tips

Any sufficiently esoteric window manager should be completely unusable unless you've read an unreasonable amount of documenttion.  Fortunately this is the case with window lab, which will greet you with a completely blank and unresponsive screen when you first start it.

Top usage tips:

1. Hold right click to display the control on the top of the screen.
2. F11 Full Screen Window
3. Alt drag to resize windows
4. Double click window handles to change Z value of window
5. When active applications in menu, hold down left click and swipe over menu.

Turns out there is not a lot to this window manager.

#### Configuration Tips

First we need to hijack the config that will launch our x session and call our own script.  This involves changing the Exec key in the file `/usr/share/xsessions/windowlab.desktop` for a relatively current ubuntu system.

```
[Desktop Entry]
Encoding=UTF-8
Name=WindowLab
Comment=This session logs you into WindowLab
Exec=/usr/bin/windowlab_start
Icon=
Type=Application
```

The following are the contents of `/usr/bin/windowlab_start`


```
#!/bin/bash
nitrogen --restore &
conky -b &
gnome-terminal &
autokey &
xmodmap -e 'keysym Super_L = mu mu mu'
xmodmap -e 'clear Mod4'
/usr/bin/windowlab
```

####  Utilities

The `windowlab_start` script references some utilities we'll need to install.

`sudo apt-get install nitrogen conky autokey`

*Nitrogen* helps manage background images.  In short, launch nitrogen manually once and select the background images you want, the --restore flag in the script above will preserve between sessions.

For conky, see `/etc/conky/conky.conf`.  To set it to display to the background, set the own_window directive to no.  And very importantly, check out <a href="https://www.google.com/search?q=conky+deviant+art&client=ubuntu&hs=Ril&channel=cs&source=lnms&tbm=isch&sa=X&ei=z7j-UZm8LqXUiwL53YG4CQ&ved=0CAkQ_AUoAQ&biw=1137&bih=503">some cool conky configurations</a> from the community.

<img src="/images/conky_gallery.png" width="700"/>


Finally note `autokey` is included.  We'll use that in the next section to map some useful hotkeys and setup a familiar application launcher which is such a great feature of gnome-3 and unity.

#### Launcher

There are quite a few cool standalone application launchers, but `gnome-do` seems to have the best feature set (For a lighter alternative checkout gmrun).

`sudo apt-get install gnome-do`

Configuring the hotkey to be just the window key, or super key, is a little tricker.  First we remap the super key to an unused character and clear any other mappings.  Note: These are the *xmodmap entries tin the windowlab_start script* above.

Run autokey and use the gui to create a script (assigned to super key) with the following entry which invokes a short python script:

```
import commands
print commands.getstatusoutput('gnome-do')
```

&nbsp;

Finally note that you will need to disable gnome-do's hotkey in the gnome-do preferences.

#### Additional Hotkeys

You can use autokey to create script entries tied to the *volume up / volume down* buttons on the keyboard as well.  As long as you are using alsa, make script entries with the following content.

Volume Down:

```
import commands
print commands.getstatusoutput('amixer sset Master 5dB-')
```

Volume Up:

```
import commands
print commands.getstatusoutput('amixer sset Master 5dB+')
```

Additionally we can create an entry for the print screen key:

```
import commands
print commands.getstatusoutput('gnome-screenshot')
```

&nbsp;

###  Dual Monitors

Use the `arandr` tool to generate an xrandr script.

```
sudo apt-get install arandr
./arandr
```

Save the script somewhere and invoke it in the @windowlab_start@ script created above before beginning launching windowlab.  Will require restart, though I did not try sending any signals to windowlaw process.

#### Application Menu

Edit the file @/etc/X11/windowlab/windowlab.menurc@

### Conclusion

Well that's it.  I encourage you to make your life more difficult by trying a cool new window manager like windowlab.

####  Update!

Move `/usr/bin/nautilus` into a different file, and create a shell script in its place to launch nautilus with the --no-desktop option to prevent strange behavior.

Further, consider using synapse rather than gnome-do, as the latter has fallen into questionable maintenance state.

Additionally consider setting an environment variable GDK_CORE_DEVICE_EVENTS=1 to fix mouse scrolling issues.
