#! /bin/sh

nvidia-smi -q -d utilization | rg -i gpu | sed -n '3p' | awk '{print $3}'
