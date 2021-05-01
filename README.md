# dotfiles

My personal dotfiles managed with [rcm](https://github.com/thoughtbot/rcm).

## Installation

### Oh My Zsh

```console
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* [Pure prompt](https://github.com/sindresorhus/pure) (included with oh-my-zsh)
* [Tomorrow Night theme](https://github.com/chriskempson/tomorrow-theme)
* [Go Mono](https://blog.golang.org/go-fonts) (was [Luxi Mono](http://en.wikipedia.org/wiki/Luxi_fonts))

(Note: oh-my-zsh install overwrites .zshrc, so install it first)

### Homebrew

[Homebrew](http://brew.sh/) with [bundle](https://github.com/Homebrew/homebrew-bundle)

```console
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew bundle -v
```

### RCM

```console
rcup -v -d ~/src/github.com/nathany/dotfiles -x README.md -x LICENSE -x Brewfile -x sublime
```

### Sublime Text

Install [Package Control](https://packagecontrol.io/installation).

[Symlink to dotfiles](https://packagecontrol.io/docs/syncing):

```
cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
rm -r User
ln -s ~/src/github.com/nathany/dotfiles/sublime/User/
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
