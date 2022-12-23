#!/bin/bash

USER_NAME=Tom

sudo useradd -m -s /bin/bash $USER_NAME
sudo passwd $USER_NAME

sudo gpasswd -a $USER_NAME docker
sudo tee /etc/sudoers.d/$USER_NAME <<< '${USER_NAME} ALL=(ALL) ALL'
