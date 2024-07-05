#!/bin/bash

# Criar usuário
adduser -D augusto

# Definir senha
echo "augusto:123456" | chpasswd

# Adicionar ao grupo sudo
addgroup augusto wheel

# Verificar se o usuário foi adicionado com sucesso
id augusto

# Verificar se o usuário tem permissões de sudo
su - augusto -c "sudo -l"

# Atualizar a lista de pacotes
apk update

# Instalar certificados ca, curl, gnupg
apk add ca-certificates curl gnupg

# Instalar docker e openrc
apk add docker openrc

# Adicionar repositório do Docker
apk add docker-cli

# Configurar Docker para iniciar no boot
rc-update add docker boot

# Iniciar o serviço Docker
service docker start

# Verificar o status do serviço Docker
service docker status
