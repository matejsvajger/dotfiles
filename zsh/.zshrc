###############################################################################
# zsh

# configurations
for file in $HOME/.zsh/*.zsh; do
  source $file
done

# zit
source "$HOME/.zitrc"

# compilation
(
  if (( ${+ZSH_COMPILING_FILES} )); then
    return
  fi

  export ZSH_COMPILING_FILES=1

  zcompare() {
    if [[ -s $1 && ( ! -s $1.zwc || $1 -nt $1.zwc) ]]; then
      zcompile $1
    fi
  }

  for file in $HOME/.{zlogin,zlogout,zprofile,zshenv,zshrc}; do
    zcompare $file &> /dev/null
  done

  for file in $HOME/.zsh/*.zsh; do
    zcompare $file &> /dev/null
  done

  for module_dir in $ZIT_MODULES_LOADED; do
    for file in $module_dir/**/*.*sh(.N); do
      zcompare $file &> /dev/null
    done
  done

  unset ZSH_COMPILING_FILES
) &!
