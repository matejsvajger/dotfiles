###############################################################################
# completion

# initialize completion
autoload -Uz compinit
compinit -d "$ZSH_CACHE/zcompdump"
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path "$ZSH_CACHE"

# enable approximate completions
zstyle ':completion:*' completer _complete _ignored _approximate
zstyle -e ':completion:*:approximate:*' max-errors \
  "reply=($((($#PREFIX+$#SUFFIX)/3)) numeric)"

# automatically update PATH entries
zstyle ':completion:*' rehash true

# use menu completion
zstyle ':completion:*' menu select

# verbose completion results
zstyle ':completion:*' verbose true

# smart matching of dashed values, e.g. f-b matching foo-bar
zstyle ':completion:*' matcher-list 'r:|[._-]=* r:|=*'

# group results by category
zstyle ':completion:*' group-name ''

# keep directories and files separated
zstyle ':completion:*' list-dirs-first true

# don't try parent path completion if the directories exist
zstyle ':completion:*' accept-exact-dirs true

# always use menu selection for `cd -`
zstyle ':completion:*:*:cd:*:directory-stack' force-list always
zstyle ':completion:*:*:cd:*:directory-stack' menu yes select

# pretty messages during pagination
zstyle ':completion:*' list-prompt \
  '%SAt %p: Hit TAB for more, or the character to insert%s'
zstyle ':completion:*' select-prompt \
  '%SScrolling active: current selection at %p%s'

# nicer format for completion messages
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:corrections' format '%U%F{green}%d (errors: %e)%f%u'
zstyle ':completion:*:warnings' format '%F{202}%BNo matches for: %F{214}%d%b'

# show message while waiting for completion
zstyle ':completion:*' show-completer true

# prettier completion for processes
zstyle ':completion:*:*:*:*:processes' force-list always
zstyle ':completion:*:*:*:*:processes' menu yes select
zstyle ':completion:*:*:*:*:processes' list-colors \
  '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zstyle ':completion:*:*:*:*:processes' command \
  "ps -u $USER -o pid,user,args -w -w"

# use ls colors for path completions
function _set-list-colors() {
  zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
  unfunction _set-list-colors
}
sched 0 _set-list-colors
