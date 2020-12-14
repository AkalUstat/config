#!/bin/zsh
asdf plugin-add nodejs
asdf plugin-add rust https://github.com/asdf-community/asdf-rust.git
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf plugin-add lua https://github.com/Stratus3D/asdf-lua.git
asdf plugin add neovim

# something something for nodejs
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'
asdf install nodejs 12.13.0
asdf global nodejs 12.13.0
asdf install lua 5.4.0
asdf global lua 5.4.0
asdf install golang 1.15.6
asdf global golang 1.15.6
asdf install rust 1.47.0
asdf global rust 1.47.0

asdf install neovim ref:master # install from a branch
asdf global neovim ref:master
