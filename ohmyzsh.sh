#!/bin/bash

ZSHRC_FILE=~/.zshrc

cp "$ZSHRC_FILE" "$ZSHRC_FILE.bak"

sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="bira"/g' "$ZSHRC_FILE"

sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)/g' "$ZSHRC_FILE"
