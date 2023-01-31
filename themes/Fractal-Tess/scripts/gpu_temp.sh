#! /bin/sh

nvidia-smi -q -d temperature | rg -i "gpu current" | awk -F ":" '{print $2}' | sed 's/c\| //ig'
