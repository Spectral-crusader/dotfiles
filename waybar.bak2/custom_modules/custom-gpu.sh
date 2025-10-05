#!/bin/bash

raw_clock=$(nvidia-smi --query-gpu=clocks.current.memory --format=csv,noheader,nounits)
clock=$(echo "scale=1;$raw_clock/1000" | bc | sed -e 's/^-\./-0./' -e 's/^\./0./')

temperature=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader,nounits)
busypercent=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits)
deviceinfo=$(nvidia-smi --query-gpu=name --format=csv,noheader,nounits)
driverinfo=$(nvidia-smi --query-gpu=driver_version --format=csv,noheader,nounits)

echo '{"text": "'$clock'GHz |  '$temperature'°C <span color=\"darkgray\">| '$busypercent'%</span>", "class": "custom-gpu", "tooltip": "<b>'$deviceinfo'</b>\n'$driverinfo'"}'
