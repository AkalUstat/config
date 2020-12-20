#!/bin/zsh
# WARNING: this sets up the repo in https mode. after adding ssh key we need to do the following things
# yadm remote remove origin
# yadm remote add origin [ssh key]

yadm clone https://github.com/AkalUstat/dotfiles
yadm status

source ~/.zshrc
