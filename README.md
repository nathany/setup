My personal dotfiles managed with [rcm](https://github.com/thoughtbot/rcm).

### Oh My Zsh

```console
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* [Pure prompt](https://github.com/sindresorhus/pure) (included with oh-my-zsh)
* [Tomorrow Night theme](https://github.com/chriskempson/tomorrow-theme)
* [Luxi Mono](http://en.wikipedia.org/wiki/Luxi_fonts)

(Note: oh-my-zsh install overwrites .zshrc, so install it first)

### Homebrew

[Homebrew](http://brew.sh/) with [bundle](https://github.com/Homebrew/homebrew-bundle)

```console
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

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

Install [gometalinter](https://github.com/alecthomas/gometalinter) and run `gometalinter --install --update`.

### Atom

My favourite packages and themes can be installed with:

```
apm stars —-install
```

### Vim

Install [vim-plug](https://github.com/junegunn/vim-plug). Then start `vim` and use the `:PlugInstall` command to install the plugins in `.vimrc`.

Run `:GoUpdateBinaries` to (re)install the latest versions of [gocode][], [gometalinter][], [goimports][], [godef][], [oracle][], [gorename][], [golint][], [errcheck][], [gotags][], and [asmfmt][].

[gocode]: https://github.com/nsf/gocode
[gometalinter]: https://github.com/alecthomas/gometalinter
[goimports]: https://golang.org/x/tools/cmd/goimports
[godef]: https://github.com/rogpeppe/godef
[oracle]: https://golang.org/x/tools/cmd/oracle
[gorename]: https://golang.org/x/tools/cmd/gorename
[golint]: https://github.com/golang/lint/golint
[errcheck]: https://github.com/kisielk/errcheck
[gotags]: https://github.com/jstemmer/gotags
[asmfmt]: https://github.com/klauspost/asmfmt/cmd/asmfmt

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
