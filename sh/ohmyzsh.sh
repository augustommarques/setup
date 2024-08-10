#!/bin/bash

ZSHRC_FILE=~/.zshrc

cp "$ZSHRC_FILE" "$ZSHRC_FILE.bak"

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting

git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete

git config --global credential.helper 'cache --timeout=7200'

sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="bira"/g' "$ZSHRC_FILE"

sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)/g' "$ZSHRC_FILE"

chsh -s $(which zsh)