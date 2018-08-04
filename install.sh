#!/bin/bash

BLUE="\\033[0;34m"
GREEN="\\033[0;32m"
NC="\\033[0m"

# ask before running the installer to prevent execution by accident
read -p "are you sure you want to run the installer? [yn] " -n 1 -r
echo
if [[ ! "$REPLY" =~ ^[Yy]$ ]]
then
  exit 1
fi

read -p "are you really sure? [yn] " -n 1 -r
echo
if [[ ! "$REPLY" =~ ^[Yy]$ ]]
then
  exit 1
fi

# install homebrew
if ! [ -x "$(command -v brew)" ]; then
  printf "${BLUE}installing homebrew…${NC}\\n"

  /usr/bin/ruby -e \
    "$(curl -fsSL \
      https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# install homebrew apps/packages
printf "${BLUE}installing homebrew packages…${NC}\\n"

brew tap homebrew/homebrew-php
brew tap buo/cask-upgrade
brew update

brew install zsh
brew install git
brew install micro
brew install ripgrep
brew install fzf
brew install node
brew install yarn
brew install composer
brew install go
brew install mas
brew install shellcheck
brew install icdiff
brew install tmux
brew install reattach-to-user-namespace
brew install stow

brew cask install 1password
brew cask install alfred
brew cask install visual-studio-code
brew cask install hyper
brew cask install fork
brew cask install transmit
brew cask install postman
brew cask install tunnelblick
brew cask install docker
brew cask install mamp
brew cask install adobe-creative-cloud
brew cask install google-chrome
brew cask install dropbox
brew cask install discord
brew cask install whatsapp
brew cask install slack
brew cask install figma
brew cask install mpv
brew cask install xld
brew cask install transmission
brew cask install appcleaner

brew cleanup
brew cask cleanup

# install app store apps
mas install 497799835 # xcode
mas install 409201541 # pages
mas install 409183694 # keynote
mas install 409203825 # numbers
mas install 470158793 # keka
mas install 439697913 # icon slate
mas install 1173932628 # drop
mas install 639968404 # parcel
mas install 880001334 # reeder
mas install 903733783 # tagr
mas install 441258766 # magnet

# update npm
printf "${BLUE}updating npm…${NC}\\n"

npm i -g npm

# install global yarn apps/packages
printf "${BLUE}installing global yarn packages…${NC}\\n"

yarn global add http-server typescript eslint websn @vue/cli gulp-cli less \
  less-plugin-clean-css uglify-js is-up-cli updates vsce

# remove any default/old configurations and set up symlinks with stow
printf "${BLUE}setting up symlinks…${NC}\\n"

rm -f "$HOME/.zshrc" && rm -rf "$HOME/.zsh" && stow zsh
rm -f "$HOME/.zitrc" && rm -rf "$HOME/.zit" && stow zit
rm -f "$HOME/.tmux.conf" && stow tmux
rm -f "$HOME/.hyper.js" && stow hyper
rm -f "$HOME/.gitconfig" && rm -f "$HOME/.gitignore_global" && stow git
rm -f "$HOME/.hushlogin" && stow other

# set zsh as default shell
printf "${BLUE}setting up zsh as default shell…${NC}\\n"

sudo dscl . change "/users/$USER" UserShell /bin/bash "$(which zsh)"

# instructions for finishing the installation
printf "${GREEN}all done!${NC}\\n"
printf "${BLUE}open a new terminal to download plugins and finish the \
installation.${NC}\\n"
printf "${BLUE}after that, run \`source .zshrc && base16_material\` to switch \
to the correct theme.${NC}\\n"
