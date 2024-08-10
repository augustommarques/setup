# **Dev Setup**

## **WSL**

Para habilitar o Windows Subsystem for Linux (WSL), execute o comando abaixo:

```sh
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

Execute o comando como administrador. Este comando ativa o recurso WSL no seu sistema, mas não reinicia o computador automaticamente. Certifique-se de reiniciar manualmente após a execução.

<details>
<summary>Alpine </summary>

Execute o script para criação do usuário:

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/augustommarques/setup/main/alpine.sh)"
```

Execute o script para alterar o usuário padrão:

```sh
.\Alpine.exe config --default-user augusto
```

</details>

## **Oh my zsh**

**Script para instalar:**

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

**Script de modificação do Terminal**

**Variável de diretório:**

```sh
ZSHRC_FILE=~/.zshrc
```

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/augustommarques/setup/main/ohmyzsh.sh)"
```

**Repositórios Utilizados:**

```sh
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```

```sh
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
```

```sh
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete
```
