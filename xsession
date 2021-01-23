export PATH=$HOME/bin:$PATH

## SET LOCALE
export LANG="en_AU.UTF-8"
export LC_CTYPE="en_AU.UTF-8"

## DISABLE SYSTEM BEEP
xset b off

## LOAD XRESOURCES
xrdb ~/.Xresources

## CORE APPS
feh --randomize --bg-fill ~/img/Wallpaper/ &
dunst &

## CWM Set-up
#------------------------------------------------
exec cwm

