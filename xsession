export PATH=$HOME/bin:$PATH
export LANG="en_AU.UTF-8"
export LC_CTYPE="en_AU.UTF-8"

xset b off
hsetroot -solid "#676767"

if [ $(uname -s) = "OpenBSD" ]; then
    xrdb ~/.Xresources
    cwm_bar &
    picom --config ~/.config/compton.conf &
    dunst &
    #exec cwm
    #slstatus &
    #exec dwm
    exec sdorfehs
else [ $(uname -s) = "NetBSD" ]; 
    xrdb ~/.Xresources
    sxhkd -c "$HOME/.config/berry/sxhkdrc" &
    exec berry
    #exec ctwm
    exit 1
fi
