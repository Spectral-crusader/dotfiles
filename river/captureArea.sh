#!/bin/sh

location=/tmp/"$(date +'%s_grim.png')"

grim -g "$(slurp -d)" "$location"

wl-copy <"$location"

notify-send -t 1500 "Screenshot Taken"
