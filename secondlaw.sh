#!/usr/bin/env bash


# ----------
# Aliases
alias gst='git status'
alias ga='git add'
alias gpall='git push -u origin --all'
alias gtags='git push -u origin --tags'
alias gcmsg='git commit -m'
alias gac='git commit -am'
alias gpull='git pull origin master'
alias gr='git rm'

alias ll='ls -l'

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

    alias pycharm="charm"
elif [[ "$OSTYPE" == "msys" ]]; then
        # Lightweight shell and GNU utilities compiled for Windows (part of MinGW and Git for Windows Bash)
    PRM_DIR="$SECONDLAW/prm-data-win"
    export EDITOR='emacsclient -n'
    alias sde='source deactivate'

    # some programs installed via conda get odd names or are not installed as .exe. These aliases attempt at fixing that
    alias markdown="markdown_py"
    #alias pweave="python `which pweave-script.py`"
    #alias ptangle="python `which ptangle-script.py`"

    # ghostscript suffes from the same problem
    alias gs="gswin64"

    alias word="/c/Program Files/Microsoft Office/root/Office16/WINWORD.EXE"

    alias pycharm="pycharm64"
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


# stolen from https://github.com/robbyrussell/oh-my-zsh/blob/master/lib/functions.zsh
function take() {
  mkdir -p $1
  cd $1
}

# function to close the buffer corresponding to a given file in emacs
# cf = close file
function cf() {
    e -e  "(if (get-buffer \"$1\") (kill-buffer \"$1\"))"
    }

# function to compile and run a Java file
# javar my_program.java
function javar() {
    javac $1;
    java $(basename $1 .java)
    }

# More ConEmu settings

# This configures shell integration for ConEmu (Windows only)
if [[ "$OSTYPE" == "msys" ]]; then
    PROMPT_COMMAND="$PROMPT_COMMAND;ConEmuC -StoreCWD"

    alias ce='ConEmu64 -run {Bash::Git bash}'
    alias cesh='ce -new_console:sH'
    alias cesv='ce -new_console:sV'
fi

# Jupyter
export JUPYTER_CONFIG_DIR=$SECONDLAW/jupyter

alias jnb='jupyter notebook'

## use my custom template as the default
alias nb2pdf='jupyter nbconvert --to pdf --template techreport'

# Pandoc settings

## enable bash completion
eval "$(pandoc --bash-completion)"

