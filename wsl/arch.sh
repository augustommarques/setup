#!/bin/bash

useradd -m -s /bin/bash augusto

echo 'augusto:123456' | chpasswd

usermod -aG sudo augusto

pacman -Syu upgrade

pacman -S docker.io git wget zsh

# Adicionar o usuário augusto ao grupo docker
usermod -aG docker augusto

# Ativar e iniciar o serviço do Docker

systemctl enable docker

systemctl start docker

# Finalizar o script
exit 0