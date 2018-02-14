touch /etc/modprobe.d/psmouse.conf
echo "options psmouse proto=imps" > /etc/modprobe.d/psmouse.conf
touch /usr/share/X11/xorg.conf.d/90-evdev.conf
cat > /etc/myconfig.conf << EOL
Section "InputClass"
    Identifier "Touchpad/TrackPoint"
    MatchProduct "PS/2 Synaptics TouchPad"
    MatchDriver "evdev"
    Option "EmulateWheel" "1"
    Option "EmulateWheelButton" "2"
    Option "Emulate3Buttons" "0"
    Option "XAxisMapping" "6 7"
    Option "YAxisMapping" "4 5"
EndSection
EOL
update-initramfs -u
