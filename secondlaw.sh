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



# ----------
# OS-specific configurations
if [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OSX
    PRM_DIR="$SECONDLAW/prm-data-osx"
    export EDITOR="emacsclient -s $HOME/.emacs.d/server/server -n"
    export LC_ALL=en_US.UTF-8
    export LANG=en_US.UTF-8
elif [[ "$OSTYPE" == "msys" ]]; then
        # Lightweight shell and GNU utilities compiled for Windows (part of MinGW and Git for Windows Bash)
    PRM_DIR="$SECONDLAW/prm-data-win"
    export EDITOR='emacsclient -n'
    alias sde='source deactivate'
fi

export ALTERNATE_EDITOR='atom'

alias e="$EDITOR"

# ----------
# Environment

export PATH="$SECONDLAW/bin:$PATH"

# ----------
# git prompt
GIT_PROMPT=$SECONDLAW/bash-git-prompt

source $GIT_PROMPT/prompt-colors.sh

#GIT_PROMPT_ONLY_IN_REPO=1

GIT_PROMPT_START="\n${Red}\u${ResetColor}@${Magenta}\h ${ResetColor}in ${Blue}\w ${ResetColor}:"
GIT_PROMPT_END='\n\$ '

source $GIT_PROMPT/gitprompt.sh
GIT_PROMPT_THEME=Solarized

# ----------
# PRM (project management)
PRM_INSTALLATION_DIR=$SECONDLAW/prm

alias prm=". $PRM_INSTALLATION_DIR/prm.sh"
alias pt='prm stop'
alias pst='prm start'

# ----------
# Misc stuff

# helpful alias from http://matt.might.net/articles/console-hacks-exploiting-frequency/
# print the most used commands, to encourage optimization of command line usage
alias freq='cat ~/.bash_history | sort | uniq -c | sort -gr | head'

alias ebp='e $HOME/.bash_profile'
alias jnb='jupyter notebook'

# stolen from https://github.com/robbyrussell/oh-my-zsh/blob/master/lib/functions.zsh
function take() {
  mkdir -p $1
  cd $1
}
