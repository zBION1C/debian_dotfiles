SELECTION="$(printf "⏻ Shutdown\nReboot\n󰈆 Logout" | fuzzel --dmenu -l 3 --config $HOME/.config/fuzzel/fuzzel.ini -p "> ")"

case $SELECTION in
    *"Shutdown")
        shutdown now;;
    *"Reboot")
        reboot now;;
    *"Logout")
        niri msg action quit --skip-confirmation;;
esac
