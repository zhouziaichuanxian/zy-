#!/usr/bin/env bash
set -e
export DEBIAN_FRONTEND=noninteractive
sudo apt-get -yq install ubuntu-desktop-minimal gnome-session gnome-shell ubuntu-session gnome-terminal   tigervnc-standalone-server netcat-openbsd curl x11-xserver-utils xauth dbus-x11 xorg xserver-xorg-core   xserver-xorg-input-all xserver-xorg-video-dummy x11-apps policykit-1 colord speech-dispatcher
