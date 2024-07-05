#!/bin/bash

# Atualizar repositórios e instalar pacotes necessários
apk update
apk add ca-certificates curl gnupg sudo shadow openrc docker

# Criar usuário e definir senha
adduser -D augusto
echo "augusto:123456" | chpasswd

# Adicionar usuário ao grupo sudo
adduser augusto wheel

# Verificar se o usuário foi adicionado com sucesso
id augusto

# Verificar se o usuário tem permissões de sudo
echo "%wheel ALL=(ALL) ALL" >> /etc/sudoers
sudo -l -U augusto

# Habilitar e iniciar o serviço Docker
rc-update add docker boot
service docker start

# Verificar status do Docker
service docker status
