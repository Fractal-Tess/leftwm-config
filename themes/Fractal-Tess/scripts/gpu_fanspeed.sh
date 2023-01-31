#! /bin/sh

nvidia-smi -q | rg -i "fan speed" | awk -F ':' '{print $2}' | sed 's/[^0-9]//ig'