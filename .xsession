export PATH=$HOME/bin:$PATH
export LANG="en_AU.UTF-8"
export LC_CTYPE="en_AU.UTF-8"

xset b off
hsetroot -solid "#676767"
xrdb ~/.Xresources
    
picom --config ~/.config/compton.conf &
dunst &
#cwm_bar &
dwm_bar &
st &
exec cwm
#exec dwm
#exec bspwm
#exec sdorfehs
