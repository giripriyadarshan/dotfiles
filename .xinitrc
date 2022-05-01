#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

#twm &
#xclock -geometry 50x50-1+1 &
#xterm -geometry 80x50+494+51 &
#xterm -geometry 80x20+494-0 &
#exec xterm -geometry 80x66+0+0 -name login

if [[ $DISABLE_TOUCHSCREEN == 1 ]]; then
    touchscreen_id=$(xinput list | grep -i "touchscreen" | sed 's/.*=//' | cut -f 1)
    xinput disable $touchscreen_id
fi
if [[ $IS_SYNAPTICS_TOUCHPAD == 1 ]]; then
    touchpad_id=$(xinput list | grep -m 1 -i "synaptics" | sed 's/.*=//' | cut -f 1)
    xinput --set-prop $touchpad_id 'libinput Natural Scrolling Enabled' 1
fi

if [[ $IS_NVIDIA_GPU == 1 ]]; then
    xrandr --setprovideroutputsource modesetting NVIDIA-0
fi

if type autorandr >/dev/null 2>&1; then
    autorandr --change
fi

if type i3 >/dev/null 2>&1; then
    exec i3
fi
