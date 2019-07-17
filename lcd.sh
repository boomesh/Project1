#!/bin/bash

LCD_CONFIG=config_7inch_hdmi.txt
WORK_DONE=/tmp/.config_lcd_complete
PI_CONFIG_FILE=/boot/config.txt

if [ -f $WORK_DONE ]; then
	exit
fi

## TODO replace with config file
cat $LCD_CONFIG | sudo tee --append $PI_CONFIG_FILE

## mark complete, do work only once
touch $WORK_DONE