#!/bin/sh

#tvservice -o
tvservice -p
fbset -depth 8
fbset -depth 16
xrefresh -d :0.0
export DISPLAY=":0.0" && xdotool key ctrl+r
