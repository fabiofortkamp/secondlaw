PRM_DIR="$SECONDLAW/prm-data-osx"

alias emacs="emacsclient -s $HOME/.emacs.d/server/server -n"
export ALTERNATE_EDITOR="emacs"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

alias pycharm="charm"

function closeapp() {
  osascript -e "quit app \"$1\""
}
