# stolen from https://github.com/robbyrussell/oh-my-zsh/blob/master/lib/functions.zsh
function take() {
  mkdir -p $1
  cd $1
}
