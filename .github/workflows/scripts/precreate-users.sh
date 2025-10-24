#!/usr/bin/env bash
set -e
getent group colord >/dev/null || sudo groupadd --system colord
getent group gnome-remote-desktop >/dev/null || sudo groupadd --system gnome-remote-desktop
getent group speech-dispatcher >/dev/null || sudo groupadd --system speech-dispatcher

id -u colord >/dev/null 2>&1 || sudo adduser --system --home /var/lib/colord --shell /usr/sbin/nologin --ingroup colord colord
id -u gnome-remote-desktop >/dev/null 2>&1 || sudo adduser --system --home /var/lib/gnome-remote-desktop --shell /usr/sbin/nologin --ingroup gnome-remote-desktop gnome-remote-desktop
id -u speech-dispatcher >/dev/null 2>&1 || sudo adduser --system --home /var/lib/speech-dispatcher --shell /usr/sbin/nologin --ingroup speech-dispatcher speech-dispatcher

sudo mkdir -p /var/lib/colord /var/lib/gnome-remote-desktop /var/lib/speech-dispatcher
sudo chown colord:colord /var/lib/colord || true
sudo chown gnome-remote-desktop:gnome-remote-desktop /var/lib/gnome-remote-desktop || true
sudo chown speech-dispatcher:speech-dispatcher /var/lib/speech-dispatcher || true
sudo chmod 0755 /var/lib/colord /var/lib/gnome-remote-desktop /var/lib/speech-dispatcher || true

sudo mkdir -p /etc/NetworkManager/system-connections
sudo chmod 700 /etc/NetworkManager/system-connections
