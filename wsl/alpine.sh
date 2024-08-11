#!/bin/bash

apk update

apk add ca-certificates curl gnupg sudo shadow openrc docker zsh git libstdc++ 

adduser -D augusto

adduser augusto wheel

echo "augusto:123456" | chpasswd

id augusto

echo "%wheel ALL=(ALL) ALL" >> /etc/sudoers

echo "root ALL=(ALL) ALL" >> /etc/sudoers

sudo -l -U augusto
