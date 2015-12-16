secondlaw
=========

An engineer's approach to organize dotfiles. We try to minimize entropy, although that's not always possible.

This is a personal project where I try to organize my terminal configurations. There aren't any special features; I just want to have all my configurations acessible everywhere, in a very OS-independent and modularized way.

## Installation

1. Clone this repository to a directory of your choice, using the `--recursive` flag (since I include some submodules).
2. Inside your bash configuration file (e.g. `~/.bash_profile`), define the `SECONDLAW` variable to point to the installation directory from the step above, and then include `source $SECONDLAW/secondlaw.sh` in the configuration file. Important! Don't forget to actually define this variable, since it is used thourghout this project.
3. Create a symbolic link for `latexmkrc` to `~/.latexmkrc`

For Windows/Cygwin (besides all of those steps above):

1. Install the [Input Mono font](http://input.fontbureau.com/)
2. Create a shortcut to `QuakeTerminal.ahk` and to the [Console](http://sourceforge.net/projects/console/ ) 
 executable in the Startup folder.

## Current features

We are just at the beginning. First, the basics:

* Some git aliases (type `alias` to see what's defined)
* PDF mode for latexmkrc (later I may develop on this)
* The `EDITOR` variable points to Emacs.

### Terminal in Windows

For Windows: ``Ctrl-` `` will activate the [Console "visor"](http://tech.xster.net/tips/quake-style-drop-down-terminal-for-windows/ ). `Escape` deactivates it

### Git prompt

I tried to develop a nice and simple prompt, and the implementation is based on [my fork of `git-prompt-bash`](https://github.com/fabiofortkamp/bash-git-prompt). Basically, the prompt looks like this: `<user> in <dir> <git-info>`. This repo is included as a submodule. The theme used is Solarized.

### Bash projects

I use [my fork](https://github.com/fabiofortkamp/prm) of the [`prm` package](https://github.com/eivind88/prm). In `secondlaw.sh`, I defined two possible locations for the configuration files for this package, based on the operating system (the `prm-data-*` directories). Check the repo page for more details.
 
