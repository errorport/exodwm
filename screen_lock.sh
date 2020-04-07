#!/bin/bash
revert() {
  xset dpms 600 600 600
  xinput --set-prop 11 "Device Enabled" "1"
  xinput --set-prop 14 "Device Enabled" "1"
}
trap revert HUP INT TERM
xset +dpms dpms 5 5 5
xinput --set-prop 11 "Device Enabled" "0"
xinput --set-prop 14 "Device Enabled" "0"
i3lock -n -i $HOME/img/bg_1080.png -c "#000000"
revert

