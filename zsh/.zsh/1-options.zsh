###############################################################################
# options

# directories
setopt AUTO_CD
setopt AUTO_PUSHD
unsetopt CDABLE_VARS
setopt CHASE_DOTS
setopt CHASE_LINKS
unsetopt POSIX_CD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_MINUS
unsetopt PUSHD_SILENT
unsetopt PUSHD_TO_HOME

# completion
setopt ALWAYS_LAST_PROMPT
setopt ALWAYS_TO_END
setopt AUTO_LIST
setopt AUTO_MENU
unsetopt AUTO_NAME_DIRS
setopt AUTO_PARAM_KEYS
setopt AUTO_PARAM_SLASH
setopt AUTO_REMOVE_SLASH
unsetopt BASH_AUTO_LIST
unsetopt COMPLETE_ALIASES
setopt COMPLETE_IN_WORD
setopt GLOB_COMPLETE
setopt HASH_LIST_ALL
unsetopt LIST_AMBIGUOUS
unsetopt LIST_BEEP
unsetopt LIST_PACKED
unsetopt LIST_ROWS_FIRST
setopt LIST_TYPES
unsetopt MENU_COMPLETE
unsetopt REC_EXACT

# expansion and globbing
setopt BAD_PATTERN
setopt BARE_GLOB_QUAL
setopt BRACE_CCL
setopt CASE_GLOB
setopt CASE_MATCH
unsetopt CSH_NULL_GLOB
setopt EQUALS
setopt EXTENDED_GLOB
unsetopt FORCE_FLOAT
setopt GLOB
unsetopt GLOB_ASSIGN
unsetopt GLOB_DOTS
unsetopt GLOB_STAR_SHORT
unsetopt GLOB_SUBST
unsetopt HIST_SUBST_PATTERN
unsetopt IGNORE_BRACES
unsetopt IGNORE_CLOSE_BRACES
unsetopt KSH_GLOB
setopt MAGIC_EQUAL_SUBST
setopt MARK_DIRS
setopt MULTIBYTE
setopt NOMATCH
unsetopt NULL_GLOB
setopt NUMERIC_GLOB_SORT
setopt RC_EXPAND_PARAM
unsetopt REMATCH_PCRE
unsetopt SH_GLOB
setopt UNSET
unsetopt WARN_CREATE_GLOBAL
unsetopt WARN_NESTED_VAR

# history
setopt APPEND_HISTORY
setopt BANG_HIST
setopt EXTENDED_HISTORY
unsetopt HIST_ALLOW_CLOBBER
unsetopt HIST_BEEP
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FCNTL_LOCK
setopt HIST_FIND_NO_DUPS
unsetopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
unsetopt HIST_LEX_WORDS
setopt HIST_NO_FUNCTIONS
setopt HIST_NO_STORE
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_BY_COPY
unsetopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY
unsetopt INC_APPEND_HISTORY_TIME
unsetopt SHARE_HISTORY

# initialization
setopt ALL_EXPORT
setopt GLOBAL_EXPORT
setopt GLOBAL_RCS
setopt RCS

# input/output
setopt ALIASES
unsetopt CLOBBER
setopt CORRECT
unsetopt CORRECT_ALL
unsetopt DVORAK
unsetopt FLOW_CONTROL
unsetopt IGNORE_EOF
setopt INTERACTIVE_COMMENTS
setopt HASH_CMDS
setopt HASH_DIRS
setopt HASH_EXECUTABLES_ONLY
unsetopt MAIL_WARNING
unsetopt PATH_DIRS
unsetopt PATH_SCRIPT
setopt PRINT_EIGHT_BIT
setopt PRINT_EXIT_VALUE
setopt RC_QUOTES
unsetopt RM_STAR_SILENT
unsetopt RM_STAR_WAIT
setopt SHORT_LOOPS
unsetopt SUN_KEYBOARD_HACK

# job control
setopt AUTO_CONTINUE
unsetopt AUTO_RESUME
setopt BG_NICE
setopt CHECK_JOBS
setopt HUP
setopt LONG_LIST_JOBS
setopt MONITOR
setopt NOTIFY
unsetopt POSIX_JOBS

# prompting
unsetopt PROMPT_BANG
setopt PROMPT_CR
setopt PROMPT_SP
setopt PROMPT_PERCENT
setopt PROMPT_SUBST
setopt TRANSIENT_RPROMPT

# scripts and functions
unsetopt ALIAS_FUNC_DEF
setopt C_BASES
unsetopt C_PRECEDENCES
unsetopt DEBUG_BEFORE_CMD
unsetopt ERR_EXIT
unsetopt ERR_RETURN
setopt EVAL_LINENO
setopt EXEC
setopt FUNCTION_ARGZERO
setopt LOCAL_LOOPS
setopt LOCAL_OPTIONS
setopt LOCAL_PATTERNS
setopt LOCAL_TRAPS
setopt MULTI_FUNC_DEF
setopt MULTIOS
unsetopt OCTAL_ZEROES
unsetopt PIPE_FAIL
unsetopt SOURCE_TRACE
unsetopt TYPESET_SILENT
unsetopt VERBOSE
unsetopt XTRACE

# shell emulation
unsetopt APPEND_CREATE
unsetopt BASH_REMATCH
unsetopt BSD_ECHO
unsetopt CONTINUE_ON_ERROR
unsetopt CSH_JUNKIE_HISTORY
unsetopt CSH_JUNKIE_LOOPS
unsetopt CSH_JUNKIE_QUOTES
unsetopt CSH_NULLCMD
unsetopt KSH_ARRAYS
unsetopt KSH_AUTOLOAD
unsetopt KSH_OPTION_PRINT
unsetopt KSH_TYPESET
unsetopt KSH_ZERO_SUBSCRIPT
unsetopt POSIX_ALIASES
unsetopt POSIX_ARGZERO
unsetopt POSIX_BUILTINS
unsetopt POSIX_IDENTIFIERS
unsetopt POSIX_STRINGS
unsetopt POSIX_TRAPS
unsetopt SH_FILE_EXPANSION
unsetopt SH_NULLCMD
unsetopt SH_OPTION_LETTERS
unsetopt SH_WORD_SPLIT
unsetopt TRAPS_ASYNC

# zle
unsetopt BEEP
unsetopt COMBINING_CHARS
setopt EMACS
unsetopt OVERSTRIKE
unsetopt SINGLE_LINE_ZLE
unsetopt VI
setopt ZLE