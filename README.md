My personal dotfiles managed with [rcm](https://github.com/thoughtbot/rcm).

### Homebrew

[Homebrew](http://brew.sh/) with [bundle](https://github.com/Homebrew/homebrew-bundle)

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap Homebrew/bundle
brew bundle
```


### ZSH

Latest version:

```console
brew install zsh
chsh -s /usr/local/bin/zsh
```

* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* [Pure prompt](https://github.com/sindresorhus/pure) (included with oh-my-zsh)
* [Tomorrow Night theme](https://github.com/chriskempson/tomorrow-theme)

### RCM

```console
brew tap thoughtbot/formulae
brew install rcm

rcup -v -d ~/src/github.com/nathany/dotfiles
```

(Note: oh-my-zsh install overwrites .zshrc)

### SSH Keys

New SSH keys need to be created ([GitHub](https://help.github.com/articles/generating-ssh-keys/)).

```console
cd ~/.ssh
ssh-keygen -t rsa -C "git@nathany.com"

Enter file in which to save the key: github_rsa
```

### Go

### hidden pkg

```console
chflags hidden ~/pkg
```
