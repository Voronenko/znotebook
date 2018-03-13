#!/bin/bash

set -e

mkdir -p ~/apps/nteract
wget -o nteract-0.8.3-x86_64.AppImage https://github.com/nteract/nteract/releases/download/v0.8.3/nteract-0.8.3-x86_64.AppImage
chmod +x nteract-0.8.3-x86_64.AppImage
cp ./znotes.desktop ~/.local/share/applications/
cp ./nteract.sh ~/apps/nteract
