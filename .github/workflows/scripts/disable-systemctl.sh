#!/usr/bin/env bash
set -e
sudo dpkg-divert --local --rename --add /usr/bin/systemctl || true
echo -e '#!/bin/sh
exit 0' | sudo tee /usr/bin/systemctl >/dev/null
sudo chmod +x /usr/bin/systemctl

sudo dpkg-divert --local --rename --add /usr/sbin/deb-systemd-invoke || true
echo -e '#!/bin/sh
exit 0' | sudo tee /usr/sbin/deb-systemd-invoke >/dev/null
sudo chmod +x /usr/sbin/deb-systemd-invoke

sudo dpkg-divert --local --rename --add /usr/sbin/service || true
echo -e '#!/bin/sh
exit 0' | sudo tee /usr/sbin/service >/dev/null
sudo chmod +x /usr/sbin/service
