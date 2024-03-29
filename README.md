secondlaw
=========

An engineer's approach to organize dotfiles. We try to minimize entropy, although that's not always possible.

This is a personal project where I try to organize my terminal configurations. There aren't any special features; I just want to have all my configurations acessible everywhere, in a very OS-independent and modularized way.

## Installation

First, on Windows :

1. Install [Git for Windows](https://git-for-windows.github.io/), making sure to do a *complete installation* (install all utilies, add folders to PATH);
2. Clone this repository to a directory of your choice, using the `--recursive` flag (since I include some submodules);
3. Install [ConEmu](https://conemu.github.io/);
4. Copy `ConEmu.xml` to `%APPDATA%` (unfortunately, it seems ConEmu cannot read symbolic links as settings file, so anytime the settings file it has to be exported to this repo to keep track of it; on the other hand, every time this repo is update you may have to copy this file again);
5. Run ConEmu to make sure everything is working;
6. Install [AutoHotKey][ahk] and add to PATH;
7. Create shortcuts for the [AutoHotKey][ahk] scripts in the StartUp Folder `%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup`;

On OS X:

1. Clone this repository to a directory of your choice, using the `--recursive` flag (since I include some submodules).

Then, on either Windows OR OS X:

1. Symlink `~/.gitconfig/` to `$SECONDLAW/gitconfig`;
2. Install [Visual Studio Code](https://code.visualstudio.com/);
3. Inside your bash configuration file (e.g. `~/.bash_profile`), define the `SECONDLAW` variable to point to the installation directory from the step above, and then include `source $SECONDLAW/secondlaw.sh` in the configuration file. Important! Don't forget to actually define this variable, since it is used thourghout this project;
4. Install [TeX Live](https://www.tug.org/texlive/) and create a symbolic link for `latexmkrc` to `~/.latexmkrc`;
5. Install my LaTeX packages:
    * [`techreport`](https://github.com/fabiofortkamp/techreport)
    * [`engsymbols`](https://github.com/fabiofortkamp/engsymbols)
    * [`magref`](https://github.com/PoloMag/magref-latex)
6. Install [pandoc](http://pandoc.org) and create a symbolic link for the `pandoc` directory to Pandoc data directory (run `pandoc --version` to check your system's data dir);
7. Create a `prm-data-win` or `prm-data-osx` (depending on your system) inside this directory;
8. Install the [DejaVu fonts](https://dejavu-fonts.github.io/);
9. Install Python 3.

## Current features

We are just at the beginning. First, the basics:

* Some git aliases (type `alias` to see what's defined)
* PDF mode for latexmkrc (later I may develop on this)
* The `EDITOR` variable points to [Visual Studio Code Insiders](https://code.visualstudio.com/insiders/) (or Emacs, if that is not available). The `e` alias is set up to the available editor.

### Terminal in Windows

For Windows: `Hyper-I` will activate/deactivate ConEmu in a Visor style (you may want to put a shortcur to ConEmu in your start folder to assure fast access to the terminal on Windows).

The `Hyper` key is "created" by `bin/hyper.ahk`, transforming the left `Ctrl` key into `Ctrl-Shift-Alt`. This key combination is very hard to type and hence will likely not be used by any major application; therefore, it is useful for defining global, system-wide shortcuts.

For more explanations, including the source for this inspiration and how I configure keyboards, see [this post of mine](http://thermocode.net/blog/keyboard/). I suggest also the use of my [`homectrl`][homectrl] script.

### Git prompt

I tried to develop a nice and simple prompt, and the implementation is based on [my fork of `git-prompt-bash`](https://github.com/fabiofortkamp/bash-git-prompt). Basically, the prompt looks like this: `<user> in <dir> <git-info>`. This repo is included as a submodule. The theme used is Solarized.

### Bash projects

I use [my fork](https://github.com/fabiofortkamp/prm) of the [`prm` package](https://github.com/eivind88/prm). In `secondlaw.sh`, I defined two possible locations for the configuration files for this package, based on the operating system (the `prm-data-*` directories). Check the repo page for more details. There are also some useful aliases.

### Autohotkey

I will collect some [AutoHotKey][ahk] scripts in the `bin` directory (together with some other bash scripts). Read the comments in them to see what they do.

[ahk]: http://autohotkey.com
[homectrl]: https://github.com/fabiofortkamp/homectrl

### Pandoc

My most common use case is to convert Markdown notes to LaTeX and PDF. I've tweaked the default Pandoc template for LaTeX, to use the [`techreport`](https://github.com/fabiofortkamp/techreport) class and the [`engsymbols`](https://github.com/fabiofortkamp/engsymbols) and [`magref`](https://github.com/PoloMag/magref-latex) packages (hence the requirements to install them).

### IPython and Jupyter

The main [Jupyter configuration directory][jupconfig] is set to `$SECONDLAW/jupyter`. If you don't have Jupyter installed (presumably via [Anaconda][Anaconda]), nothing will happen.

There is a [basic `nbconvert` configuration][nbconvert-config] to my own uses. The custom templates are defined in `$SECONDLAW/jupyter/templates`. For they to make sense, you have to install my custom LaTeX classes and packages described above.

The [IPython configuration directory][ipython-profile] is set to `$SECONDLAW/ipython`.

Only the configuration files and templates are tracked in version control for these profiles.

[jupconfig]: https://jupyter.readthedocs.io/en/latest/projects/jupyter-directories.html

[nbconvert-config]: https://nbconvert.readthedocs.io/en/stable/config_options.html

[Anaconda]: https://www.continuum.io/downloads

[ipython-profile]: https://ipython.readthedocs.io/en/stable/config/index.html#configuring-ipython
