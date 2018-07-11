###############################################################################
# aliases

# show/hide hidden files in finder
alias shf='defaults write com.apple.finder AppleShowAllFiles YES; \
  killall Finder /System/Library/CoreServices/Finder.app'
alias hhf='defaults write com.apple.finder AppleShowAllFiles NO; \
  killall Finder /System/Library/CoreServices/Finder.app'

# directories
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias -- -='cd -'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

alias md='mkdir -p'
alias rd='rmdir'

alias ls='ls -G'
alias l='ls -la'

# stop/start mongodb
alias mongodb-start='brew services start mongodb'
alias mongodb-stop='brew services stop mongodb'
