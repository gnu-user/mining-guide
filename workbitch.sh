#!/bin/bash
export DISPLAY=:0
export GPU_MAX_ALLOC_PERCENT=100
export GPU_USE_SYNC_OBJECTS=1
cd /home/master/cgminer-3.7.2
./cgminer --scrypt -I 13 -w 256 -g 2 --thread-concurrency 8192 --gpu-vddc 1.087 --gpu-powertune 20 --gpu-memclock 1720,1700,1720,1600 --gpu-engine 1$
sleep 10
maxnice cgminer
