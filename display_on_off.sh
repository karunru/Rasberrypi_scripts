#!/bin/sh

tvservice -o
sleep 10
tvservice -p
#startx -t
fbset -depth 8
fbset -depth 16
xrefresh -d :0.0
