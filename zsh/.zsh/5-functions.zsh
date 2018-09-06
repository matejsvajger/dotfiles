###############################################################################
# functions

BLUE="\\033[0;34m"
GREEN="\\033[0;32m"
NC="\\033[0m"

# updating
update_dotfiles() {
  printf "${BLUE}updating dotfiles…${NC}\\n"
  cd ~/.dotfiles && git pull
}

update_brew() {
  printf "${BLUE}updating homebrew and packages…${NC}\\n"
  brew update
  brew upgrade
  brew cu --cleanup --no-brew-update
  brew cleanup
}

update_npm() {
  printf "${BLUE}updating npm and packages…${NC}\\n"
  npm update -g
  npm i -g npm@latest
}

update_yarn() {
  printf "${BLUE}updating yarn packages…${NC}\\n"
  yarn global upgrade
}

update_node() {
  printf "${BLUE}updating node…${NC}\\n"
  n latest
}

update_composer() {
  printf "${BLUE}updating composer packages…${NC}\\n"
  composer global update
}

update_zit() {
  printf "${BLUE}updating zit packages…${NC}\\n"
  zit-update
}

update_appstore() {
  printf "${BLUE}updating app store apps…${NC}\\n"
  mas upgrade
}

update_everything() {
  printf "${BLUE}updating everything…${NC}\\n"
  update_dotfiles
  update_brew
  update_npm
  update_yarn
  update_node
  update_composer
  update_zit
  update_appstore
  printf "${GREEN}updated everything!${NC}\\n"
}
