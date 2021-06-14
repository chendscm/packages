#!/usr/bin/bash

set -eux

sudo pacman -Sy --noconfirm git openssh tree libffi xonsh

sudo cp -r .ssh /home/user/.ssh
sudo chown user:user -R /home/user/.ssh
chmod 0600 /home/user/.ssh/id_rsa
ssh-keyscan -t rsa github.com >> /home/user/.ssh/known_hosts

git config --global user.email "chend.scm@gmail.com"
git config --global user.name "chendscm"

sudo mkdir tmp
sudo chown user:user tmp
