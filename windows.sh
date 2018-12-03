# Lightweight shell and GNU utilities compiled for Windows (part of MinGW and Git for Windows Bash)
PRM_DIR="$SECONDLAW/prm-data-win"

alias emacs='emacsclient -n'
export ALTERNATE_EDITOR="emacs"
alias sde='source deactivate'

# some programs installed via conda get odd names or are not installed as .exe. These aliases attempt at fixing that
alias markdown="markdown_py"
#alias pweave="python `which pweave-script.py`"
#alias ptangle="python `which ptangle-script.py`"

# ghostscript suffes from the same problem
alias gs="gswin64"

alias word="/c/Program Files/Microsoft Office/root/Office16/WINWORD.EXE"

alias pycharm="pycharm64"

alias comsolcompile53a="/c/Program\ Files/COMSOL/COMSOL53a/Multiphysics/bin/win64/comsolcompile.exe"

PROMPT_COMMAND="$PROMPT_COMMAND;ConEmuC -StoreCWD"
alias ce='ConEmu64 -run {Bash::Git bash}'
alias cesh='ce -new_console:sH'
alias cesv='ce -new_console:sV'
