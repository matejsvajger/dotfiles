#!/bin/bash

BLUE="\\033[0;34m"
GREEN="\\033[0;32m"
NC="\\033[0m"

# ask before running the installer to prevent execution by accident
echo "This will install zsh as default shell and also the following packages:"
echo " - git,"
echo " - node,"
echo " - yarn,"
echo " - composer"
echo " - homebrew"
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
brew update

brew install zsh
brew install git
brew install micro
brew install node
brew install yarn
brew install composer
brew install shellcheck
brew install tmux
brew install stow

brew cleanup

# update npm
printf "${BLUE}updating npm…${NC}\\n"

npm i -g npm

# install global yarn apps/packages
printf "${BLUE}installing global yarn packages…${NC}\\n"

yarn global add tldr typescript eslint @vue/cli gulp-cli \
  less less-plugin-clean-css uglify-js is-up-cli updates vsce

# remove any default/old configurations and set up symlinks with stow
printf "${BLUE}setting up symlinks…${NC}\\n"

rm -f "$HOME/.zshrc" && rm -rf "$HOME/.zsh" && stow zsh
rm -f "$HOME/.zitrc" && rm -rf "$HOME/.zit" && stow zit
rm -f "$HOME/.tmux.conf" && stow tmux
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
