#!/bin/bash

if [ ! -d deb_package/opt/arduino ]; then
	wget "https://downloads.arduino.cc/arduino-1.8.9-linux64.tar.xz" -O arduino.tar.xz
	tar -xJf arduino.tar.xz
	mkdir -p deb_package/opt/
	mv arduino-1.8.9 deb_package/opt/arduino
fi

dpkg-deb -b deb_package .