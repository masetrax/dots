hsetroot -solid "#323232"

if [ $(uname -s) = "OpenBSD" ]; then
    xrdb ~/.Xdefaults
    exec cwm
    #exec sdorfehs
else [ $(uname -s) = "NetBSD" ]; 
    xrdb ~/.Xresources
    sxhkd -c "$HOME/.config/berry/sxhkdrc" &
    exec berry
    #exec ctwm
    exit 1
fi
