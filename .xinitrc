feh --bg-scale /home/koko/documents/wallpaper-dark.png &
/home/koko/documents/status.sh &
setxkbmap -option ctrl:nocaps -option compose:ralt
xinput --set-prop "YSTEK G Mouse" "libinput Accel Speed" -0.9
xcompmgr -f -n &
exec dbus-run-session dwm
