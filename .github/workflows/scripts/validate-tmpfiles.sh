#!/usr/bin/env bash
set -e
sudo systemd-sysusers
sudo systemd-tmpfiles --create
