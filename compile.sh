#!/bin/bash

ARDUINO_VERSION=1.8.13

if [ ! -d deb_package/opt/arduino ]; then
	wget "https://downloads.arduino.cc/arduino-$ARDUINO_VERSION-linux64.tar.xz" -O arduino.tar.xz
	tar -xJf arduino.tar.xz
	mkdir -p deb_package/opt/
	mv arduino-$ARDUINO_VERSION deb_package/opt/arduino
	rm -rf deb_package/opt/arduino/java
fi

dpkg-deb -b deb_package .
