#!/bin/bash

# Stuff
cp -a /custom/. /

apt-get install ibus{,-m17n,,-gtk} im-config
apt-get install ttf-devanagari-fonts
#apt-get purge ubiquity

wget http://aksharyogini.sudhanwa.com/download/Aksharyogini2Normal.ttf -O /usr/share/fonts/truetype/Aksharyogini2Normal.ttf
wget http://saraswaticlasses.net/download/akshar.ttf -O /usr/share/fonts/truetype/akshar.ttf
fc-cache --system-only

unopkg add --shared /custom/libre_office_4.oxt

glib-compile-schemas /usr/share/glib-2.0/schemas/

