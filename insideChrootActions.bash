#!/bin/bash

# Stuff
cp -a /custom/. /

apt-get install ibus{,-m17n,,-gtk} im-config
apt-get install ttf-devanagari-fonts
#apt-get purge ubiquity

wget http://aksharyogini.sudhanwa.com/download/Aksharyogini2Normal.ttf -O /usr/share/fonts/truetype/Aksharyogini2Normal.ttf
wget http://saraswaticlasses.net/download/akshar.ttf -O /usr/share/fonts/truetype/akshar.ttf
fc-cache --system-only
# wget the new version from http://extensions.libreoffice.org/extension-center/marathi-spellchecker/releases/1.3/libre_office_4_autotext.oxt
unopkg add --shared /custom/libre_office_4.oxt
# chagne os interface to marathi
# goto System settings - Language Support - Install/ Remove Languages - select "marathi"
#  - apply changes - drag marathi to first place - Apply System-Wide
# or use the following command to install marathi interface of lib office
# sudo apt-get install libreoffice-l10n-mr

glib-compile-schemas /usr/share/glib-2.0/schemas/

