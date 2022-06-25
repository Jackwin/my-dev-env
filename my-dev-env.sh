#!/bin/bash
ZSH_HOME=~/.oh-my-zsh
bash ./oh-my-zsh-install.sh


git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_HOME:-~/.oh-my-zsh/}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_HOME:-~/.oh-my-zsh/}/plugins/zsh-syntax-highlighting


cp ./zshrc ~/.zshrc