###############################################################################
# variables

# history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=25000

# correction
CORRECT_IGNORE="_*"

# language
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# editor
export EDITOR=micro
export VISUAL=micro

# colors
export LSCOLORS=Gxfxcxdxbxegedabagacad

# mails
MAILCHECK=0

# theme
SPACESHIP_TIME_SHOW=true

# ohmyzsh
ZSH_CACHE_DIR="$ZSH_CACHE"

# zit
ZIT_MODULES_PATH="$HOME/.zit"
ZIT_PATH="$ZIT_MODULES_PATH/zit"

# go
export GOROOT=/usr/local/opt/go/libexec
export GOPATH="$HOME/.go"
export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"
