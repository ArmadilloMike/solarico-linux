#!/bin/bash

chosen=$(echo -e " Shutdown\n Reboot\n Lock\n Logout" | rofi -dmenu -i -p "⏻" -theme-str '
window { width: 200px; }
listview { lines: 4; }
')

case "$chosen" in
	" Shutdown") systemctl poweroff ;;
	" Reboot") systemctl reboot ;;
	" Lock") i3lock -c 2E3440 ;;
	" Logout") i3-msg exit ;;
esac
