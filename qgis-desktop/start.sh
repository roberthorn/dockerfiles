#!/bin/bash
open -a XQuartz

ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')

/opt/X11/bin/xhost + $ip

docker run -t --rm \
	-v /tmp/.X11-unix:/tmp.X11-unix \
	-e DISPLAY=$ip:0 \
	--name qgis-desktop \
	roberthorn/qgis-desktop:latest \
	qgis
