###############################################################################
# early setup

# emacs key bindings
bindkey -e

# zsh cache
ZSH_CACHE="/tmp/.zsh-${USER}-${ZSH_VERSION}"
mkdir -p "$ZSH_CACHE"
chmod 700 "$ZSH_CACHE"
