# Automatically load VBoxClient
/usr/bin/VBoxClient-all

# Put into effect .Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# Start bspwm with required hotkey daemon sxhkd
sxhkd &
urxvt &
exec bspwm


