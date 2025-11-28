#!/usr/bin/env bash

match='[app_id="pwvucontrol"]'
altmatch='[title="PipeWire Volume Control"]'

# Есть ли окно вообще?
if swaymsg -t get_tree | grep -qi '"app_id": "pwvucontrol"\|"name": "PipeWire Volume Control"'; then
  # Пробуем спрятать, если оно на экране
  if swaymsg -t get_tree | grep -qi '"app_id": "pwvucontrol".*"visible": true\|"name": "PipeWire Volume Control".*"visible": true'; then
    swaymsg "$match move to scratchpad"
    swaymsg "$altmatch move to scratchpad"
    exit 0
  fi

  # Если окно есть, но скрыто — показать
  swaymsg scratchpad show
  # На всякий случай — центр и фокус
  swaymsg "$match move position center, focus"
  swaymsg "$altmatch move position center, focus"
  exit 0
fi

# Окна нет — запускаем и ждём появления
pwvucontrol &
for i in {1..30}; do
  sleep 0.1
  if swaymsg -t get_tree | grep -qi '"app_id": "pwvucontrol"\|"name": "PipeWire Volume Control"'; then
    # Переместить в scratchpad и показать (получится красивый тоггл в будущем)
    swaymsg "$match move to scratchpad"
    swaymsg "$altmatch move to scratchpad"
    swaymsg scratchpad show
    swaymsg "$match move position center, focus"
    swaymsg "$altmatch move position center, focus"
    exit 0
  fi
done

exit 0

