secondlaw
=========

An engineer's approach to organize dotfiles. We try to minimize entropy, although that's not always possible.

This is a personal project where I try to organize my terminal configurations. There aren't any special features; I just want to have all my configurations acessible everywhere, in a very OS-independent and modularized way.

## Installation

1. Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
2. Clone this repository to a directory of your choice.
3. Create a symbolic link for the `zshrc` file to `~/.zshrc` (creating a backup and deleting the old version if there exists one)
4. Create a symbolic link for `zshenv` to `~/.zshenv` (this contains the environment variables)
5. Create a symbolic link for the `oh-my-zsh-custom` directory to `~/.oh-my-zsh-custom`

This assumes you installed `oh-my-zsh` to the default directory. If you modified the installation, modify the `ZSH` environment variable inside `zshenv` accordingly.

The `oh-my-zsh-custom` directory is where you place customizations for the `oh-my-zsh` framework. Refer to their page for instructions.


For Windows/Cygwin (besides all of those steps above):

1. Create a [Windows link](http://www.howtogeek.com/howto/16226/complete-guide-to-symbolic-links-symlinks-on-windows-or-linux/) for `minttyrc` in your Home directory directory
2. Install the [Input Mono font](http://input.fontbureau.com/)

## Current features

We are just at the beginning.

* Basic `oh-my-zsh` configuration
* Dedicated, separated folder to customize `oh-my-zsh`
* A very nice prompt, completely stolen from [Dr. Bunsen](http://www.drbunsen.org/the-text-triumvirate/)
* Solarized light profile for Mintty (for Windows/Cygwin), copied from [this repository](https://github.com/mavnn/mintty-colors-solarized)
