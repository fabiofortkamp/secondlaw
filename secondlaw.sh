#!/usr/bin/env bash

# Stolen from Matthias dotfiles:
# https://github.com/mathiasbynens/dotfiles

for file in ./{path,exports,aliases,functions,prompt,jupyter}.sh; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# ----------
# OS-specific configurations
if [[ "$OSTYPE" == "darwin"* ]]; then
    source macos.sh
elif [[ "$OSTYPE" == "msys" ]]; then
    source windows
fi

# ----------
# PRM (project management)
PRM_INSTALLATION_DIR=$SECONDLAW/prm

alias prm=". $PRM_INSTALLATION_DIR/prm.sh"
alias pt='prm stop'
alias pst='prm start'

# Jupyter
export JUPYTER_CONFIG_DIR=$SECONDLAW/jupyter

alias jnb='jupyter notebook'
alias jl='jupyter lab'
alias jc='jupyter console'
alias jqt='jupyter qtconsole'

## use my custom template as the default
alias nb2pdf='jupyter nbconvert --to pdf --template techreport'

# Pandoc settings

## enable bash completion
if [ $(which pandoc) ]; then
    eval "$(pandoc --bash-completion)"
fi

# Pipenv settings
if [ $(which pipenv) ]; then
    eval "$(pipenv --completion)"
fi
