secondlaw
=========

An engineer's approach to organize dotfiles. We try to minimize entropy, although that's not always possible.

This is a personal project where I try to organize my terminal configurations. There aren't any special features; I just want to have all my configurations acessible everywhere, in a very OS-independent and modularized way.

## Installation

1. Clone this repository to a directory of your choice, using the `--recursive` flag (since I include some submodules).
2. Inside your bash configuration file (e.g. `~/.bash_profile`), define the `SECONDLAW` variable to point to the installation directory from the step above, and then include `source $SECONDLAW/secondlaw.sh` in the configuration file. Important! Don't forget to actually define this variable, since it is used thourghout this project.
3. Create a symbolic link for `latexmkrc` to `~/.latexmkrc`
4. Create a `prm-data-win` or `prm-data-osx` (depending on your system) inside this directory.
5. Install the [DejaVu fonts](http://dejavu-fonts.org/wiki/Main_Page)

For Windows/Cygwin (besides all of those steps above):

1. Install [Git for Windows](https://git-for-windows.github.io/), making sure to do a *complete installation* (install all utilies, add folders to PATH)
2. Install [ConEmu](https://conemu.github.io/)
3. Copy `ConEmu.xml` to `%APPDATA%` (unfortunately, it seems ConEmu cannot read symbolic links as settings file, so anytime the settings file it has to be exported to this repo to keep track of it; on the other hand, every time this repo is update you may have to copy this file again).
4. Run ConEmu to make sure everything is working
5. Create shortcuts for the [AutoHotKey][ahk] scripts in the StartUp Folder `%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup`

## Current features

We are just at the beginning. First, the basics:

* Some git aliases (type `alias` to see what's defined)
* PDF mode for latexmkrc (later I may develop on this)
* The `EDITOR` variable points to Emacs (or Atom, if Emacs is not available). The `e` alias is set up to the available editor.

### Terminal in Windows

For Windows: ``Ctrl-` `` will activate/deactivate ConEmu in a Visor style (you may want to put a shortcur to ConEmu in your start folder to assure fast access to the terminal on Windows).

### Git prompt

I tried to develop a nice and simple prompt, and the implementation is based on [my fork of `git-prompt-bash`](https://github.com/fabiofortkamp/bash-git-prompt). Basically, the prompt looks like this: `<user> in <dir> <git-info>`. This repo is included as a submodule. The theme used is Solarized.

### Bash projects

I use [my fork](https://github.com/fabiofortkamp/prm) of the [`prm` package](https://github.com/eivind88/prm). In `secondlaw.sh`, I defined two possible locations for the configuration files for this package, based on the operating system (the `prm-data-*` directories). Check the repo page for more details. There are also some useful aliases.
 
### Autohotkey

I will collect some [AutoHotKey][ahk] scripts in the `bin` directory (together with some other bash scripts). Read the comments in them to see what they do.

[ahk]: http://autohotkey.com
