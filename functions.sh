# function to close the buffer corresponding to a given file in emacs
# cf = close file
function cf() {
     emacs -e  "(if (get-buffer \"$1\") (kill-buffer \"$1\"))"
     }


# stolen from https://github.com/robbyrussell/oh-my-zsh/blob/master/lib/functions.zsh
function take() {
  mkdir -p $1
  cd $1
}
