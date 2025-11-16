#!/usr/bin/env bash
BAT=$(ls /sys/class/power_supply | grep BAT | head -n 1)
while true; do
  bat_lvl=$(cat /sys/class/power_supply/${BAT}/capacity)
  if [ "$bat_lvl" -le 100 ]; then
    notify-send --urgency=CRITICAL "Battery Low" "Level: ${bat_lvl}%"
    sleep 1200
  else
    sleep 120
  fi
done
