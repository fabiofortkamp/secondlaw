secondlaw
=========

An engineer's approach to organize dotfiles. We try to minimize entropy, although that's not always possible.

This is a personal project where I try to organize my terminal configurations. There aren't any special features; I just want to have all my configurations acessible everywhere, in a very OS-independent and modularized way.

## Installation

1. Clone this repository to a directory of your choice.
2. Include this line inside your bash configuration file (e.g. `~/.bash_profile`): `source <secondlaw dir>/secondlaw.sh`
3. Create a symbolic link for `latexmkrc` to `~/.latexmkrc`

For Windows/Cygwin (besides all of those steps above):

1. Create a [Windows link](http://www.howtogeek.com/howto/16226/complete-guide-to-symbolic-links-symlinks-on-windows-or-linux/) for `minttyrc` in your Home directory directory
2. Install the [Input Mono font](http://input.fontbureau.com/)
3. Create a shortcut to `QuakeTerminal.ahk` and to the Console executable in the Startup folder

## Current features

We are just at the beginning.

* Some git aliases 
* Solarized light profile for Mintty (for Windows/Cygwin), copied from [this repository](https://github.com/mavnn/mintty-colors-solarized)
* PDF mode for latexmkrc
* For Windows: ``Ctrl-` `` will activate the [Console "visor"](http://tech.xster.net/tips/quake-style-drop-down-terminal-for-windows/ ). `Escape` deactivates it
 
