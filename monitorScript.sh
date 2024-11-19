#!/bin/bash

connected=$(xrandr | grep 'HDMI-2 connected')

if [[ -z "$connected" ]]; then
    echo 'online'

    xrandr --output HDMI-2 --off
else
	displayed=$(xrandr | grep 'HDMI-2 connected 1920x1080+1920+0')

	if [[ -z "$displayed" ]]; then
		xrandr --output HDMI-2 --mode 1920x1080 --pos 1920x0
	else
		xrandr --output HDMI-2 --off
	fi
fi
