#!/bin/bash

# Criar usuário augusto com a senha 123456
useradd -m -s /bin/bash augusto
echo 'augusto:123456' | chpasswd

# Adicionar usuário augusto ao grupo sudo
usermod -aG sudo augusto

# Atualizar e instalar pacotes necessários
apt-get update
apt-get install -y docker.io git wget zsh

# Adicionar o usuário augusto ao grupo docker
usermod -aG docker augusto

# Ativar e iniciar o serviço do Docker
systemctl enable docker
systemctl start docker

# Trocar para o usuário augusto e executar o script de instalação do Oh My Zsh
su - augusto -c 'sh -c "$(curl -fsSL https://raw.githubusercontent.com/augustommarques/setup/main/ohmyzsh.sh)"'

echo "Configuração completa. O usuário augusto foi criado com senha 123456, Docker foi instalado e configurado para ser usado sem sudo, e o Oh My Zsh foi instalado."

# Finalizar o script
exit 0
