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
sh -c "$(curl -fsSL https://raw.githubusercontent.com/augustommarques/setup/main/wsl/alpine.sh)"
```

Execute o script para alterar o usuário padrão:

```sh
.\Alpine.exe config --default-user augusto
```

</details>

<details>
<summary>Arch </summary>
Execute o script para criação do usuário:

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/augustommarques/setup/main/wsl/arch.sh)"
```

Execute o script para alterar o usuário padrão:

```sh
.\Arch.exe config --default-user augusto
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
sh -c "$(curl -fsSL https://raw.githubusercontent.com/augustommarques/setup/main/sh/ohmyzsh.sh)"
```

<details>
<summary>Repositórios Utilizados:</summary>

```sh
ZSHRC_FILE=~/.zshrc
```

```sh
git clone https://github.com/zsh-users/zsh-autosuggestions.git 
$ZSH_CUSTOM/plugins/zsh-autosuggestions
```

```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git 
$ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```

```sh
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git 
${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
```

```sh
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git 
$ZSH_CUSTOM/plugins/zsh-autocomplete
```
</details>

## **Git Comandos**

```
git config --global user.name ""
```

```
git config --global user.email 
```