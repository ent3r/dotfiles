# Originally sourced from zshrc file
# Everything is sourced in the order it was in the original dotfile

setopt autocd # change directory just by typing its name
#setopt correct            # auto correct mistakes
setopt interactivecomments # allow comments in interactive mode

#! GENERATES ERRORS - DO NOT USE
# setopt ksharrays           # arrays start at 0

setopt magicequalsubst # enable filename expansion for arguments of the form ‘anything=expression’
setopt nonomatch       # hide error message if there is no match for the pattern
setopt notify          # report the status of background jobs immediately
setopt numericglobsort # sort filenames numerically when it makes sense
setopt promptsubst     # enable command substitution in prompt

WORDCHARS=${WORDCHARS//\//} # Don't consider certain characters part of the word

# hide EOL sign ('%')
export PROMPT_EOL_MARK=""

export ZSH_SCRIPTS=$SCRIPTS_DIR/zshrc

source $ZSH_SCRIPTS/keybinds.zsh
source $ZSH_SCRIPTS/completion.zsh
source $ZSH_SCRIPTS/history.zsh

# force zsh to show the complete history
alias history="history 0"

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Disabled due to using p10k for the prompt
# source $ZSH_SCRIPTS/prompt.zsh

# Disabled due to consistent errors i weren't able to fix
# source $SCRIPTS_DIR/autocomplete-colors.zsh

source $ZSH_SCRIPTS/env.zsh
source $ZSH_SCRIPTS/colors.zsh
source $ZSH_SCRIPTS/aliases.zsh

unset ZSH_SCRIPTS
