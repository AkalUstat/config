#!/bin/zsh
echo "Installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "installing formulae"
brew install make cmake coreutils curl git gpg python

brew install asdf bat fd deno gh ripgrep yadm youtube-dl 
brew install zsh-autosuggestions zsh-syntax-highlighting
brew install watchman yarn

brew tap wfxr/code-minimap
brew install code-minimap

echo "installing casks"
brew install --cask alt-tab rectangle visual-studio-code obs discord slack keycastr cleanmymac github beekeeper-studio kitty


brew tap homebrew/cask-fonts
brew install --cask font-caskaydia-cove-nerd-font font-jetbrains-mono


echo "installing ffmpeg"
# save the biggest one for last lol
brew install ffmpeg

