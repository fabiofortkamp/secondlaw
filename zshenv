# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# mark the path as unique, that is, duplicated elements are ignored
typeset -U path

path=(/usr/local/bin /usr/bin /bin /usr/sbin /sbin /usr/local/bin /opt/X11/bin /usr/local/git/bin /usr/texbin $path)

export PATH=$HOME/miniconda/bin:$PATH

export EDITOR=emacsclient

export VISUAL=emacsclient

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
