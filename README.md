# setup

This repository is for setting up a new macOS computer.

## Installation

### Oh My Zsh

```console
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* [Pure prompt](https://github.com/sindresorhus/pure) (included with oh-my-zsh)
* [Galaxy theme](https://github.com/lysyi3m/macos-terminal-themes)
* SF Mono Regular 18

(Note: oh-my-zsh install overwrites .zshrc, so install it first)

### Homebrew

[Homebrew](http://brew.sh/) with [bundle](https://github.com/Homebrew/homebrew-bundle)

```console
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle -v
```

### RCM


Dotfile management with [RCM](https://thoughtbot.github.io/rcm/) ([GitHub](https://github.com/thoughtbot/rcm))

```console
rcup -v -d ~/src/github.com/nathany/setup/dotfiles
```

## Rust

Rust is [installed](https://www.rust-lang.org/learn/get-started) separately:

```console
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```


### Sublime Text

Install [Package Control](https://packagecontrol.io/installation).

[Symlink to setup](https://packagecontrol.io/docs/syncing):

```
cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
rm -r User
ln -s ~/src/github.com/nathany/setup/sublime/User/
```

### SSH Keys

New SSH keys need to be created ([GitHub](https://help.github.com/articles/generating-ssh-keys/)).

```console
cd ~/.ssh
ssh-keygen -t ed25519 -C "git@nathany.com"

Enter file in which to save the key: github_ed25519
```

## Go

### hidden pkg

```console
chflags hidden ~/pkg
```
