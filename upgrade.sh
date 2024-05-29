#!/bin/bash

sudo apt update

SOURCES_LIST="/etc/apt/sources.list"
NEW_SOURCES="deb http://deb.debian.org/debian/ sid main contrib non-free-firmware
deb-src http://deb.debian.org/debian/ sid main contrib non-free-firmware"


if [ "$EUID" -ne 0 ]; then
    echo "Please run as root."
    exit 1
fi

echo -e "$NEW_SOURCES" > "$SOURCES_LIST"
echo "New sources.list created."

sudo apt update
sudo apt dist-upgrade