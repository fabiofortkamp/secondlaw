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

# helpful alias from http://matt.might.net/articles/console-hacks-exploiting-frequency/
# print the most used commands, to encourage optimization of command line usage
alias freq='cat ~/.bash_history | sort | uniq -c | sort -gr | head'

alias e="$EDITOR"
alias ebp='e $HOME/.bash_profile'
