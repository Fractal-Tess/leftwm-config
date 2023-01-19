#! /bin/sh

GPU_FANSPEED=$(cat "$HOME/.gpu_fanspeed") 
GPU_FANSPEED=$(echo "$GPU_FANSPEED - 5" | bc )

if [ $GPU_FANSPEED -lt 0 ]
then
    GPU_FANSPEED=0
fi

sudo nvidia-settings -a "[gpu:0]/GPUFanControlState=1" -a "[fan:0]/GPUTargetFanSpeed=$GPU_FANSPEED"
$(echo "$GPU_FANSPEED" > "$HOME/.gpu_fanspeed")

