#!/bin/bash

ZMK_DIR="/home/fieoner/projects/zmk/app"
CONFIG_DIR="/home/fieoner/projects/zmk-config/config"
OUTPUT_DIR="/mnt/c/Users/Install/Documents/cradio-firmware"
WIN_OUTPUT='C:\Users\Install\Documents\cradio-firmware'

mkdir -p $OUTPUT_DIR

cd $ZMK_DIR

west build -p -b nice_nano_v2 -- -DZMK_CONFIG=$CONFIG_DIR -DSHIELD=cradio_left
mv build/zephyr/zmk.uf2 $OUTPUT_DIR/cradio-left.uf2

west build -p -b nice_nano_v2 -- -DZMK_CONFIG=$CONFIG_DIR -DSHIELD=cradio_right
mv build/zephyr/zmk.uf2 $OUTPUT_DIR/cradio-right.uf2

cd -
cd $OUTPUT_DIR
explorer.exe .
cd -
