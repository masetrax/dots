hsetroot -solid "#FDF6E3"

if [ $(uname -s) = "OpenBSD" ]; then
    xrdb ~/.Xdefaults
    exec cwm
else [ $(uname -s) = "NetBSD" ]; 
    xrdb ~/.Xresources
    sxhkd -c "$HOME/.config/berry/sxhkdrc" &
    exec berry
    #exec ctwm
    exit 1
fi
