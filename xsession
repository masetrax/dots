hsetroot -solid "#323232"

if [ $(uname -s) = "OpenBSD" ]; then
    xrdb ~/.Xresources
    exec cwm
    #exec sdorfehs
    #exec dwm
else [ $(uname -s) = "NetBSD" ]; 
    xrdb ~/.Xresources
    #sxhkd -c "$HOME/.config/berry/sxhkdrc" &
    #exec berry
    exec ctwm
    exit 1
fi
