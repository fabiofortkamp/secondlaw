secondlaw
=========

An engineer's approach to organize dotfiles. We try to minimize entropy, although that's not always possible.

This is a personal project where I try to organize my terminal configurations. There aren't any special features; I just want to have all my configurations acessible everywhere, in a very OS-independent and modularized way.

## Installation

1. Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
2. Clone this repository to a directory of your choice.
3. Create a symbolic link for the `zshrc` file to `~/.zshrc` (creating a backup and deleting the old version if there exists one)
4. Create a symbolic link for the `oh-my-zsh-custom` directory to `~/.oh-my-zsh-custom`

This assume you installed `oh-my-zsh` to the default directory. If you modified the installation, modify the `ZSH` environment variable inside `zshrc` accordingly.

The `oh-my-zsh-custom` directory is where you place customizations for the `oh-my-zsh` framework. Refer to their page for instructions.

## Current features

We are just at the beginning.

* Basic `oh-my-zsh` configuration
* Dedicated, separated folder to customize `oh-my-zsh`
* A very nice prompt, completely stolen from [Dr. Bunsen](http://www.drbunsen.org/the-text-triumvirate/)
