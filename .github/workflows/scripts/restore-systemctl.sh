#!/usr/bin/env bash
set -e
if sudo dpkg-divert --list | grep -q '/usr/bin/systemctl'; then
  sudo rm -f /usr/bin/systemctl
  sudo dpkg-divert --local --rename --remove /usr/bin/systemctl
fi
if sudo dpkg-divert --list | grep -q '/usr/sbin/deb-systemd-invoke'; then
  sudo rm -f /usr/sbin/deb-systemd-invoke
  sudo dpkg-divert --local --rename --remove /usr/sbin/deb-systemd-invoke
fi
if sudo dpkg-divert --list | grep -q '/usr/sbin/service'; then
  sudo rm -f /usr/sbin/service
  sudo dpkg-divert --local --rename --remove /usr/sbin/service
fi
