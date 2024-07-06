#!/bin/bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ZSHRC_FILE=~/.zshrc

cp "$ZSHRC_FILE" "$ZSHRC_FILE.bak"

sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="bira"/g' "$ZSHRC_FILE"

sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)/g' "$ZSHRC_FILE"
