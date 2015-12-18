#!/usr/bin/env bash

# ----------
# Aliases
alias gst='git status'
alias ga='git add'
alias gpall='git push -u origin --all'
alias gcmsg='git commit -m'
alias gpull='git pull origin master'
alias gr='git rm'

# ----------
# Editor configuration
export EDITOR='emacsclient -n'
export ALTERNATE_EDITOR='atom'

alias e="$EDITOR"

# ----------
# OS-specific configurations
if [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OSX
    PRM_DIR="$SECONDLAW/prm-data-osx"
elif [[ "$OSTYPE" == "msys" ]]; then
        # Lightweight shell and GNU utilities compiled for Windows (part of MinGW and Git for Windows Bash)
    PRM_DIR="$SECONDLAW/prm-data-win"
    alias sde='source deactivate'
fi

# ----------
# git prompt
GIT_PROMPT=$SECONDLAW/bash-git-prompt

source $GIT_PROMPT/prompt-colors.sh

#GIT_PROMPT_ONLY_IN_REPO=1

GIT_PROMPT_START="\n${Red}\u ${ResetColor}in ${Blue}\w ${ResetColor}:"
GIT_PROMPT_END='\n\$ '

source $GIT_PROMPT/gitprompt.sh
GIT_PROMPT_THEME=Solarized

# ----------
# PRM (project management)
PRM_INSTALLATION_DIR=$SECONDLAW/prm

alias prm=". $PRM_INSTALLATION_DIR/prm.sh"
alias pt='prm stop'
alias pst='prm start'
