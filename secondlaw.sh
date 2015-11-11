#!/usr/bin/env bash

#Aliases
alias gst='git status'
alias ga='git add'
alias gpall='git push -u origin --all'
alias gcmsg='git commit -m'

alias emacs='emacsclient -n'

EDITOR='emacsclient -n'

# git prompt
GIT_PROMPT=$SECONDLAW/bash-git-prompt

source $GIT_PROMPT/prompt-colors.sh

#GIT_PROMPT_ONLY_IN_REPO=1

GIT_PROMPT_START="\n${Red}\u ${ResetColor}in ${Blue}\w ${ResetColor}:"
GIT_PROMPT_END='\n\$ '

source $GIT_PROMPT/gitprompt.sh
GIT_PROMPT_THEME=Solarized

# PRM
PRM_INSTALLATION_DIR=$SECONDLAW/prm
PRM_DIR="$SECONDLAW/prm-data"

alias prm=". $PRM_INSTALLATION_DIR/prm.sh"
