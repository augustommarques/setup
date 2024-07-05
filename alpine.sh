#!/bin/bash

# Criar usuário
useradd augusto

# Definir senha
echo "augusto:123456" | chpasswd

# Adicionar ao grupo sudo
usermod -aG sudo augusto

# Verificar se o usuário foi adicionado com sucesso
id augusto

# Verificar se o usuário tem permissões de sudo
sudo -l -U augusto

apk update

apk add ca-certificates curl gnupg

apk add --update docker openrc. 








apk add docker-ce docker-ce-cli

systemctl enable docker

systemctl stop docker

systemctl restart docker