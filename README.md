My personal dotfiles managed with [rcm](https://github.com/thoughtbot/rcm).

### Oh My Zsh

```console
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
```

* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* [Pure prompt](https://github.com/sindresorhus/pure) (included with oh-my-zsh)
* [Tomorrow Night theme](https://github.com/chriskempson/tomorrow-theme)
* [Luxi Mono](http://en.wikipedia.org/wiki/Luxi_fonts)

(Note: oh-my-zsh install overwrites .zshrc, so install it first)

### Homebrew

[Homebrew](http://brew.sh/) with [bundle](https://github.com/Homebrew/homebrew-bundle)

```console
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap Homebrew/bundle
brew bundle
```

### Atom

My favourite packages and themes can be installed with:

```
apm stars —-install
```

### RCM

```console
rcup -v -d ~/src/github.com/nathany/dotfiles -x README.md -x LICENSE -x Brewfile
```

### Vim

Install [vim-plug](https://github.com/junegunn/vim-plug). Then start `vim` and use the `:PlugInstall` command to install the plugins in `.vimrc`.

Install a [Powerline font](https://github.com/powerline/fonts) like Meslo LG M Regular and configure Terminal.

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
